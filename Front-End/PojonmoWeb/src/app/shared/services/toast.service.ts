import { Injectable } from '@angular/core';
import {ToastrService} from "ngx-toastr";

@Injectable({
  providedIn: 'root'
})
export class ToastService {

  constructor(private toastService: ToastrService) {
  }

  success(title: string, message: string) {
    this.toastService.success(message, title);
  }

  info(title: string, message: string) {
    this.toastService.info(message, title);
  }

  warning(title: string, message: string) {
    this.toastService.warning(message, title);
  }

  error(title: string, message: string) {
    this.toastService.error(message, title);
  }
}
