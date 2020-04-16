import {Permission} from "./permission.model";

export interface Role {
  id?: number,
  created?: string,
  lastUpdated?: string,
  name?: string,
  restricted?: boolean,
  privileges?: Permission[],
}
