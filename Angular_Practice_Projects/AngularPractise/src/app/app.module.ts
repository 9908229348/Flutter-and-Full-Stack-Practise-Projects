import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { ParentComponent } from './parent/parent.component';
import { ChildComponent } from './child/child.component';
import { Child2Component } from './child2/child2.component';
import { ContainerComponent } from './container/container.component';
import { LifecycleComponent } from './lifecycle/lifecycle.component';
import { PipesComponent } from './pipes/pipes.component';
import { CapPipe } from './cap.pipe';
import { DiscountPipe } from './discount.pipe';
import { HighlightDirective } from './highlight.directive';
import { ServicesComponent } from './sevice/services/services.component';
import { Services1Component } from './sevice/services1/services1.component';
import { Services2Component } from './sevice/services2/services2.component';

@NgModule({
  declarations: [
    AppComponent,
    ParentComponent,
    ChildComponent,
    Child2Component,
    ContainerComponent,
    LifecycleComponent,
    PipesComponent,
    CapPipe,
    DiscountPipe,
    HighlightDirective,
    ServicesComponent,
    Services1Component,
    Services2Component
  ],
  imports: [                     //importing other modules
    BrowserModule
  ],
  providers: [],   //injecting the services
  bootstrap: [AppComponent],           //which component has to load/bootstrap while loading

  exports: []         //where you are going to share component
})
export class AppModule { }
