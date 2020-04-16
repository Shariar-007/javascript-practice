import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { BlockRoutingModule } from './block-routing.module';
import { CreateComponent } from './components/create/create.component';
import { ListComponent } from './components/list/list.component';


@NgModule({
  declarations: [CreateComponent, ListComponent],
  imports: [
    CommonModule,
    BlockRoutingModule
  ]
})
export class BlockModule { }
