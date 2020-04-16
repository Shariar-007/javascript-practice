import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class SessionService {

  constructor() { }

  keepLoggedIn(loginMarked: boolean) {
    return !!loginMarked;
  }
}
