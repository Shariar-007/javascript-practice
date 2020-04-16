
import { AppComponent } from './app.component';
import { LoginComponent } from './auth/login/login.component';
import { LogoutComponent } from './auth/logout/logout.component';
import { InvalidUrlComponent } from './invalid-url/invalid-url.component';
import { BaseComponent } from './shared/base/base.component';
import { NavbarComponent } from './layouts/navbar/navbar.component';
import {BrowserAnimationsModule} from "@angular/platform-browser/animations";
import {HttpClientModule} from "@angular/common/http";
import {FormsModule, ReactiveFormsModule} from "@angular/forms";
import {NgModule} from "@angular/core";
import {BrowserModule} from "@angular/platform-browser";
import {RouterModule} from "@angular/router";
import {AppRoutingModule} from "./app-routing.module";
import {ToastrModule} from "ngx-toastr";
import {MaterialModule} from "./material/material.module";
import { MatPasswordStrengthModule } from '@angular-material-extensions/password-strength';
import {NgSelectModule} from "@ng-select/ng-select";

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    LogoutComponent,
    InvalidUrlComponent,
    BaseComponent,
    NavbarComponent,
  ],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    AppRoutingModule,
    ReactiveFormsModule,
    HttpClientModule,
    ToastrModule.forRoot(),
    RouterModule,
    MaterialModule,
    MatPasswordStrengthModule,
    FormsModule,
    NgSelectModule,

  ],
  providers: [],
  exports: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
