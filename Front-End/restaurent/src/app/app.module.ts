import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { AppRoutingModule } from './app-routing.module';
import { DashboardComponent } from './dashboard/dashboard.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import {LogFrameComponent} from "../../../helpage-dashboard-web/helpage-dashboard-v2/src/app/log-frame/components/log-frames/log-frame.component";
import {LogFrameModule} from "../../../helpage-dashboard-web/helpage-dashboard-v2/src/app/log-frame/log-frame.module";

@NgModule({
  declarations: [
    AppComponent,
    DashboardComponent,
    LogFrameComponent
  ],
    imports: [
        BrowserModule,
        AppRoutingModule,
        BrowserAnimationsModule,
        LogFrameModule
    ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
