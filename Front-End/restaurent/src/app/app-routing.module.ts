import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {LoginComponent} from "./auth/containers/login/login.component";
import {AuthGuard} from "./auth/guards/auth.guard";
//canActivate: [AuthGuard]
const routes: Routes = [
  {path: '', pathMatch: 'full', redirectTo: '/login' },
  {path: 'login', component: LoginComponent },
  {
   path: 'dashboard',
   loadChildren: './dashboard/dashboard.module#DashboardModule',
    canActivate: [AuthGuard]
   // canActivate: [DashboadGuard],
   // canLoad: [DashboadGuard]
  }
];
// RouterModule.forRoot(routes)
@NgModule({
  imports: [],
  exports: [RouterModule]
})
export class AppRoutingModule { }
