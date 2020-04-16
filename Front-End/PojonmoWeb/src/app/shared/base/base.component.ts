import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-base',
  template: ``,
  styleUrls: []
})
export class BaseComponent implements OnInit {

  constructor() { }

  ngOnInit() {
  }
  protected handleError(err) {
    console.log(err);
    // if (err.status === 401) {
    //   this.authService.refreshToken();
    // }
  }

}
