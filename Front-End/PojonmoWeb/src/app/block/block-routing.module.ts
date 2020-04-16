import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {CreateComponent} from "./components/create/create.component";
import {ListComponent} from "./components/list/list.component";


const routes: Routes = [
  {path:'create', component:CreateComponent},
  {path:'list', component:ListComponent},
  {path:'', redirectTo:'create', pathMatch: 'full'},

];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class BlockRoutingModule { }
