import { Injectable } from '@angular/core';
import {User} from "../../auth/models/user.model";

@Injectable({
  providedIn: 'root'
})
export class LocalStorageService {

  public static KEYS: any = {
    clientId: '*&^%&%frgter^87i5',
    clientSecret: 'V%$#reg%786v*7i6',
    accessToken: 'B57UB5&ehyr&5b&*6',
    refreshToken: 'INB*gege&U4^345%36^5u',
    authorities: 'BUegeg&v3$76u%^&*',
    username: 'B^4^3&tertre',
    name: 'B^4^3&tertre',
    phone: 'er4647y5ehtrytg',
    email: 'B^4^3&tertre',
    // companyCode:'er4647y5ehtrytg',
    // company_logo:'skdjf23228!@#!@$@#%',
    // inventoryAccountId: '*&^%VHGHGC&1231234#$%^'
  };

  constructor( ) {
  }

  static put(key: string, value: string) {
    localStorage.setItem(key, value);
  }

  static retrive(key: string) {
    // console.log(sessionStorage.getItem(key));
    // return localStorage.getItem('localAccessToken');
    return localStorage.getItem(key);
  }

  static putAuth(user: User) {
    localStorage.setItem(this.KEYS.username, user.username);
    localStorage.setItem(this.KEYS.name, user.name);
    localStorage.setItem(this.KEYS.phone, user.phone);
    localStorage.setItem(this.KEYS.email, user.email);
    localStorage.setItem(this.KEYS.accessToken, user.access_token);
    localStorage.setItem(this.KEYS.refreshToken, user.refresh_token);
    localStorage.setItem(this.KEYS.authorities, JSON.stringify(user.authorities));
  }

  static clear(): void {
    localStorage.clear();
  }
}
