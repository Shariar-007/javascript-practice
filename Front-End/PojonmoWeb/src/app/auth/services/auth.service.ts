
import {Observable, Subject} from "rxjs";
import {environment} from "../../../environments/environment";
import {LocalStorageService} from "../../shared/utils/local-storage.service";
import {ToastService} from "../../shared/services/toast.service";
import {Injectable} from "@angular/core";
import {HttpClient} from "@angular/common/http";
import {ActivatedRoute, Router} from "@angular/router";
import {User} from "../models/user.model";
import {IUserAuth} from "../../../../../Agent-App/agent-app-frontend/src/app/auth/models/user_auth.model";

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  public imageLink;
  logged: boolean = false;
  api_version ='/api/v1/';

  statsDataSubject: Subject<any> = new Subject<any>();


  constructor(private http: HttpClient, private router: Router, private toastService: ToastService, private route: ActivatedRoute) { }

  // public static isAdmin(): boolean {
  //   const a: string = LocalStorage.retrive(LocalStorage.KEYS.authorities);
  //   const authorities: Authority[] = JSON.parse(a);
  //   if (authorities == null) {
  //     return false;
  //   }
  //   return authorities
  //     .filter(au => au.authority === 'ROLE_ADMIN')
  //     .length > 0;
  // }
  //
  // canActivate(): boolean {
  //   const loggedIn: boolean = this.isLoggedIn();
  //
  //   if (loggedIn === false) {
  //     this.toastr.error('You are logged out', 'Please login to continue!');
  //     this.router.navigate(['/login']);
  //   }
  //   return loggedIn;
  // }
  //

  isLoggedIn(): boolean {
    return LocalStorageService.retrive(LocalStorageService.KEYS.accessToken) != null;
  }

  logout(): void {
    LocalStorageService.clear();
    this.toastService.warning('You\'ve been logged out!', 'Please login to continue.');
    this.router.navigate(['/login']);
  }

  login(loginForm: any) {
    let loginUrl: string = this.getLoginUrl(loginForm.value.name, loginForm.value.password);
    let user: Observable<User> = this.http.post<User>(loginUrl, null);
    user.subscribe((auth: User) => {
    // this.http.post<User>(loginUrl, null).subscribe((auth: User) => {
      LocalStorageService.putAuth(auth);
      this.statsDataSubject.next(auth);
      this.toastService.success('Success', 'Successfully logged in!');
      this.router.navigate(['/dashboard']);
    }, error1 => this.toastService.error('Invalid Login credentials', 'Please Provide valid name and password'));


  }


  // refreshToken() {
  //   const userAuth: Observable<IUserAuth> = this.http.post<IUserAuth>(this.getRefreshTokenUrl(), null);
  //   userAuth.subscribe((auth: IUserAuth) => {
  //
  //     LocalStorage.putAuth(auth);
  //     window.location.reload();
  //
  //   }, err => {
  //     this.toastr.warning("", "You have been logged out. Please login again.");
  //     this.logout()
  //   });
  // }
  //
  // getCompanyCode(): string {
  //   return LocalStorage.retrive(LocalStorage.KEYS.companyCode) as string;
  // }
  //
  // getCompanyLogo(): string {
  //   return LocalStorage.retrive(LocalStorage.KEYS.company_logo) as string;
  // }
  //
  // getUsername(): string {
  //   return LocalStorage.retrive(LocalStorage.KEYS.username) as string;
  // }
  //
  getAccessToken(): string {
    // console.log(LocalStorageService.retrive(LocalStorageService.KEYS.accessToken));
    return LocalStorageService.retrive(LocalStorageService.KEYS.accessToken) as string;
  }
  //
  // getRefreshToken(): string {
  //   return LocalStorage.retrive(LocalStorage.KEYS.refreshToken) as string;
  // }
  //
// {{base_url}}{{api_version}}/login?client_id=client_id&client_secret=client_secret&grant_type=password&username=admin&password=password
//

getLoginUrl(username: string, password: string): string {
    return environment.base_url + this.api_version + 'login?client_id=' + environment.client_id + '&client_secret='
      + environment.client_secret + '&grant_type=password'+ '&username=' + username + '&password=' + password;
  }

  //
  // getRefreshTokenUrl(): string {
  //   return environment.base_url + '/oauth/token?grant_type=refresh_token&client_id='
  //     + environment.client_id + '&client_secret=' + environment.client_secret + '&refresh_token=' + this.getRefreshToken();
  // }
  //
  // getInventoryAccountId(): number {
  //   let inventoryAccountId = LocalStorage.retrive(LocalStorage.KEYS.inventoryAccountId) as string;
  //   return parseInt(inventoryAccountId);
  // }
  //
  // private handleError(error: Response) {
  //   return Observable.throw(error.statusText);
  // }
}
