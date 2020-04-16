import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {HomeComponent} from "./components/home/home.component";
import {PermissionCreateComponent} from "./components/permission-create/permission-create.component";
import {RolesCreateComponent} from "./components/roles-create/roles-create.component";


const routes: Routes = [
  { path:'home', redirectTo: '', pathMatch: 'full'},
  { path:'', component: HomeComponent},
  { path:'permission-create', component: PermissionCreateComponent},
  { path:'roles-create', component: RolesCreateComponent},
  { path:'roles-create/:id', component: RolesCreateComponent},
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class RulesAndPermissionRoutingModule { }
