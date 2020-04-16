import { Injectable } from '@angular/core';
import {environment} from "../../../environments/environment";


@Injectable({
  providedIn: 'root'
})
export class ApiEndPointService {
  static API_VERSION = '/api/v1';

  RULESANDPERMISSION = {
    GET_PERMISSIONS(): string{
      return environment.base_url+ ApiEndPointService.API_VERSION + '/admin/privileges';
    },
    CREATE_PERMISSION(): string{
      return environment.base_url+ ApiEndPointService.API_VERSION + '/admin/privileges';
    },
    GET_ROLES(): string{
      return environment.base_url+ ApiEndPointService.API_VERSION + '/admin/roles';
    },

    CREATE_ROLE(): string {
      return environment.base_url+ ApiEndPointService.API_VERSION + '/admin/roles';
    }
  };
}
