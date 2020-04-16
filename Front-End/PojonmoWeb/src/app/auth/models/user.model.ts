import {Authority} from "./authority.model";

export class User {
  access_token: string;
  token_type: string;
  refresh_token: string;
  expires_in: number;
  scope: string;
  name: string;
  phone: string;
  id: number;
  email: string;
  username: string;
  authorities: Authority[];
}
