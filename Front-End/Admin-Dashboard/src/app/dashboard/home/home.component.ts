import { Component, OnInit } from '@angular/core';
import {NbSidebarService} from "@nebular/theme";

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {

  isCollapsed = false;

  constructor() { }

  ngOnInit() {
  }

}