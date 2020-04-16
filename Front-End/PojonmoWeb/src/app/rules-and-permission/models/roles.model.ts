import {Role} from "./role.model";

export interface Roles {
  content?: Role[],
  pageable?: {
    sort?: {
      sorted?: boolean,
      unsorted?: boolean,
      empty?: boolean
    },
    pageNumber?: number,
    pageSize?: number,
    offset?: number,
    unpaged?: boolean,
    paged?: boolean
  },
  last?: boolean,
  totalPages?: number,
  totalElements?: number,
  first?: boolean,
  sort?: {
    sorted?: boolean,
    unsorted?: boolean,
    empty?: boolean
  },
  numberOfElements?: number,
  size?: number,
  number?: number,
  empty?: boolean

  forEach(param: (role) => void): void;
}
