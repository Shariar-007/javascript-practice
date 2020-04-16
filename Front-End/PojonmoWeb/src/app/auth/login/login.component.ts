
import {AuthService} from "../services/auth.service";
import {Component, OnInit} from "@angular/core";
import {FormControl, FormGroup, Validators} from "@angular/forms";
import {Router} from "@angular/router";
import {LocalStorageService} from "../../shared/utils/local-storage.service";
import {SessionService} from "../../shared/services/session.service";

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {
  showDetails: boolean;
  hide = true;
  marked: boolean = true;

  loginForm = new FormGroup({
    name: new FormControl('', Validators.required),
    password: new FormControl('',Validators.required),
  });


  constructor(private authService:AuthService, private router: Router, private sessionService: SessionService) { }

  ngOnInit() {
    if(this.authService.getAccessToken()){
      this.router.navigate(['/dashboard'])
    }
  }

  onSubmit() {
    // console.warn(this.loginForm.value);
    this.authService.login(this.loginForm)
  }

  keepLoggedIn(event){
    this.marked = event.target.checked;
    // console.log(event.target.checked);
    this.sessionService.keepLoggedIn(event);
  }
  // onStrengthChanged(strength: number) {
  //   console.log('password strength = ', strength);
  // }
}
