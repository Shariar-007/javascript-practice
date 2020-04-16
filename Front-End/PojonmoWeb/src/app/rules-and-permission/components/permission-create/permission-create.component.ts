import { Component, OnInit } from '@angular/core';
import {FormControl, FormGroup, Validators} from "@angular/forms";
import {strictEqual} from "assert";
import {Permission} from "../../models/permission.model";
import {PermissionService} from "../../services/permission.service";
import {ToastService} from "../../../shared/services/toast.service";
import {Ipermission} from "../../models/ipermission.model";
import {Router} from "@angular/router";

@Component({
  selector: 'app-permission-create',
  templateUrl: './permission-create.component.html',
  styleUrls: ['./permission-create.component.scss']
})

export class PermissionCreateComponent implements OnInit {
  permissionForm = new FormGroup({
    name: new FormControl('',Validators.required),
    label: new FormControl('',Validators.required),
    access_urls: new FormControl('',Validators.required),
  });
  private url:  string;
  private urls:  string[] = [];

  constructor(private router: Router, private permissionService: PermissionService, private toastService: ToastService) {}

  ngOnInit() {
  }

  onSubmit() {
    this.url = this.permissionForm.value.access_urls;
    this.urls = this.url.split(',');
    // console.log(this.urls);
    this.permissionForm.get('access_urls').setValue(this.urls);
    const permissionForm = this.permissionForm.value as Ipermission;
    // console.log(permissionForm);
    this.permissionService.createPermission(permissionForm).subscribe( data => {
      this.toastService.success('Success', 'permission created successfully!');
      this.router.navigateByUrl('/roles-and-permission');
    });
  }
}
