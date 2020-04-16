import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { DashboardRoutingModule } from './dashboard-routing.module';
import { HomeComponent } from './home/home.component';
import {NbCardModule, NbLayoutModule, NbMenuModule, NbSidebarModule, NbThemeModule, NbUserModule} from "@nebular/theme";
import {NgZorroAntdModule, NzLayoutModule, NzMenuModule, NZ_I18N, en_US, NZ_ICONS} from "ng-zorro-antd";
import { BrowserModule } from '@angular/platform-browser';
import {FormsModule, ReactiveFormsModule} from '@angular/forms';
import {HttpClientJsonpModule, HttpClientModule} from "@angular/common/http";
import {BrowserAnimationsModule} from "@angular/platform-browser/animations";
import {ScrollingModule} from "@angular/cdk/scrolling";
import {DragDropModule} from "@angular/cdk/drag-drop";
import { IconDefinition } from '@ant-design/icons-angular';
import * as AllIcons from '@ant-design/icons-angular/icons';

const antDesignIcons = AllIcons as {
  [key: string]: IconDefinition;
};
const icons: IconDefinition[] = Object.keys(antDesignIcons).map(key => antDesignIcons[key])
// @ts-ignore
@NgModule({
  declarations: [HomeComponent],
  imports: [
    CommonModule,
    DashboardRoutingModule,
    NbMenuModule.forRoot(),
    NbSidebarModule.forRoot(),
    NbSidebarModule,
    NbLayoutModule,
    NbCardModule,
    NzLayoutModule,
    NzMenuModule,
    HttpClientJsonpModule,
    ReactiveFormsModule,
    NgZorroAntdModule,
    ScrollingModule,
    DragDropModule,
    NbThemeModule.forRoot(),
    NbUserModule,
  ],
  bootstrap:    [ HomeComponent ],
  providers   : [ { provide: NZ_I18N, useValue: en_US }, { provide: NZ_ICONS, useValue: icons } ]
})
export class DashboardModule { }
