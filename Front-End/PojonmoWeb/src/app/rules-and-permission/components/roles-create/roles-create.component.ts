import { Component, OnInit } from '@angular/core';
import {FormControl, FormGroup, Validators} from "@angular/forms";
import {IRole} from "../../models/irole.model";
import {RoleService} from "../../services/role.service";
import {ToastService} from "../../../shared/services/toast.service";
import {PermissionService} from "../../services/permission.service";
import {Permission} from "../../models/permission.model";
import {ActivatedRoute, Router} from "@angular/router";

@Component({
  selector: 'app-roles-create',
  templateUrl: './roles-create.component.html',
  styleUrls: ['./roles-create.component.scss']
})
export class RolesCreateComponent implements OnInit {
  permissions: Permission;
  selectedPrivileges = [];
  selectedPrivilegesId: number[] = [];

  roleForm = new FormGroup({
    name: new FormControl('',Validators.required),
    privilege_ids: new FormControl(''),
    restricted: new FormControl(''),
    // description: new FormControl('',Validators.required),
  });
  private queryObj;
  private role_id: any;
  private selectedRole: any;


  constructor(private route: ActivatedRoute, private router: Router,private permissionService: PermissionService,private roleService: RoleService, private toastService: ToastService) { }

  ngOnInit() {
    this.permissionService.getPermissions().subscribe(permissions =>{
      this.permissions = permissions;
      // console.log(this.permissions);
    });

    this.selectedRole =window.history.state;
    console.log(this.selectedRole);
    if(this.selectedRole){
      this.roleForm.get('name').setValue(this.selectedRole.name);
      this.roleForm.get('restricted').setValue(this.selectedRole.restricted);
      this.roleForm.get('privilege_ids').setValue(this.selectedRole.privilege_ids);
    }
    // this.route.queryParamMap.subscribe(params => {
    //   this.queryObj = {params};
    //   this.role_id = this.queryObj.params.params.role_id;
    //   // console.log(this.queryObj.params.params.role_id);
    // });



  }

  onSubmit() {
    this.selectedPrivilegesId = [];
    if (this.roleForm.value.restricted == "") {
      this.roleForm.get('restricted').setValue(false);
    }
    this.selectedPrivileges.forEach(privilege => {
      this.selectedPrivilegesId.push(privilege.id);
    })
    this.roleForm.get('privilege_ids').setValue(this.selectedPrivilegesId);
    const roleForm = this.roleForm.value as IRole;
    // console.log(this.roleForm.value);
    // console.log(this.selectedPrivilegesId);
    // console.log(this.selectedPrivileges);
    this.roleService.createRole(roleForm).subscribe(data => {
      this.toastService.success('Success', 'role created successfully!');
      this.router.navigateByUrl('/roles-and-permission');
    });
    this.selectedPrivileges = [];
  }
}
