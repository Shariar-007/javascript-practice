import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { RulesAndPermissionRoutingModule } from './rules-and-permission-routing.module';
import { HomeComponent } from './components/home/home.component';
import {MatCheckboxModule} from "@angular/material/checkbox";
import { PermissionCreateComponent } from './components/permission-create/permission-create.component';
import { RolesCreateComponent } from './components/roles-create/roles-create.component';
import {FormsModule, ReactiveFormsModule} from "@angular/forms";
import {NgSelectModule} from "@ng-select/ng-select";


@NgModule({
  declarations: [HomeComponent, PermissionCreateComponent, RolesCreateComponent],
  imports: [
    CommonModule,
    RulesAndPermissionRoutingModule,
    MatCheckboxModule,
    ReactiveFormsModule,
    NgSelectModule,
    FormsModule,
    NgSelectModule,
    NgSelectModule
  ]
})
export class RulesAndPermissionModule { }
