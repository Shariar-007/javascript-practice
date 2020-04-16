
import {NgModule} from "@angular/core";
import {AuthGuardService} from "./shared/services/auth-guard.service";
import {CommonModule} from "@angular/common";
import {LoginComponent} from "./auth/login/login.component";
import {InvalidUrlComponent} from "./invalid-url/invalid-url.component";
import {RouterModule, Routes} from "@angular/router";
import {LogoutComponent} from "./auth/logout/logout.component";

const routes: Routes = [
  { path: 'dashboard', redirectTo: 'dashboard', pathMatch: 'full'},
  { path: 'login', component: LoginComponent},
  { path: '', redirectTo: 'login', pathMatch: 'full'},
  { path: 'dashboard', loadChildren: () => import ('./dashboard/dashboard.module').then(m => m.DashboardModule),canActivate:[AuthGuardService] },
  // { path: 'cluster', loadChildren: () => import ('./cluster/cluster.module').then(m => m.ClusterModule),canActivate:[AuthGuardService] },
  { path: 'cluster', loadChildren: () => import ('./cluster/cluster.module').then(m => m.ClusterModule),canActivate:[AuthGuardService] },
  { path: 'block', loadChildren: () => import ('./block/block.module').then(m => m.BlockModule),canActivate:[AuthGuardService] },//,canActivate:[AuthGuardService]
  { path: 'roles-and-permission', loadChildren: () => import ('./rules-and-permission/rules-and-permission.module').then(m => m.RulesAndPermissionModule) },
  { path: 'logout', component: LogoutComponent,canActivate:[AuthGuardService]},
  { path: '**', component: InvalidUrlComponent},
];

@NgModule({
  imports: [
    CommonModule,
    RouterModule.forRoot(routes)
  ],
  exports: [
    RouterModule
  ]
})
export class AppRoutingModule { }
