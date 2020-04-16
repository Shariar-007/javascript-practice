import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders} from "@angular/common/http";
import {AuthService} from "../../auth/services/auth.service";
import {ApiEndPointService} from "../../shared/commons/api-end-point.service";
import {Observable} from "rxjs";
import {Permission} from "../models/permission.model";
import {Roles} from "../models/roles.model";
import {IRole} from "../models/irole.model";

@Injectable({
  providedIn: 'root'
})
export class RoleService {
  token: string = this.auth.getAccessToken();
  headers = new HttpHeaders({
    Authorization: 'Bearer ' + this.auth.getAccessToken()
  });
// ?access_token=${localStorage.getItem('token')}
  constructor(private auth: AuthService, private http: HttpClient, private apiEndpoints: ApiEndPointService) { }
// +'?'+ 'access_token='+ this.token

  getRoles(): Observable<Roles>{
    // console.log(this.apiEndpoints.RULESANDPERMISSION.GET_PERMISSIONS())
    // console.log(this.auth.getAccessToken());
    return this.http.get<Roles>(this.apiEndpoints.RULESANDPERMISSION.GET_ROLES()+'?'+ 'access_token='+ this.token);
  }
  createRole(roleForm: IRole):Observable<IRole> {
    return this.http.post<IRole>(this.apiEndpoints.RULESANDPERMISSION.CREATE_ROLE()+'?'+ 'access_token='+ this.token, roleForm) ;
  }

}
