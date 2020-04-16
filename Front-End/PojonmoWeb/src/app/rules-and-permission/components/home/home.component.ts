import { Component, OnInit } from '@angular/core';
import {PermissionService} from "../../services/permission.service";
import {Permission} from "../../models/permission.model";
import {RoleService} from "../../services/role.service";
import {Router} from "@angular/router";

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {
   permissions: Permission;
   roles: any;

  constructor(private router: Router,private permissionService: PermissionService,private roleService: RoleService ) { }

  ngOnInit() {
    this.permissionService.getPermissions().subscribe(permissions =>{
      this.permissions = permissions;
      // console.log(this.permissions);
    });

    this.roleService.getRoles().subscribe(roles =>{
      this.roles = roles;
      // console.log(this.roles);
    });
  }

  clickHandler(role) {
    this.router.navigate([`/roles-and-permission/roles-create`,role.id] , {state:{...role} });
  }
}
