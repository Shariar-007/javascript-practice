import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders} from "@angular/common/http";
import {AuthService} from "../../auth/services/auth.service";
import {Observable} from "rxjs";
import {Permission} from "../models/permission.model";
import {ApiEndPointService} from "../../shared/commons/api-end-point.service";
import {Ipermission} from "../models/ipermission.model";

@Injectable({
  providedIn: 'root'
})

export class PermissionService {
  token: string = this.auth.getAccessToken();
  // headers = new HttpHeaders({
  //   Authorization: 'Bearer ' + this.auth.getAccessToken()
  // });

// ?access_token=${localStorage.getItem('token')}
  constructor(private auth: AuthService, private http: HttpClient, private apiEndpoints: ApiEndPointService) {
    // console.log(this.auth.getAccessToken());
  }

  getPermissions(): Observable<Permission>{
    // console.log(this.apiEndpoints.RULESANDPERMISSION.GET_PERMISSIONS())
    // console.log(this.auth.getAccessToken());
   return this.http.get<Permission>(this.apiEndpoints.RULESANDPERMISSION.GET_PERMISSIONS()+'?'+ 'access_token='+ this.token);
  }

  createPermission(permissionForm: Ipermission):Observable<Ipermission> {
    // console.log(permissionForm);
    return this.http.post<Ipermission>(this.apiEndpoints.RULESANDPERMISSION.CREATE_PERMISSION()+'?'+ 'access_token='+ this.token, permissionForm) ;
  }
}
