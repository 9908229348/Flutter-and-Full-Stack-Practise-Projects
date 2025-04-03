import { Component, Input, OnInit } from '@angular/core';
import { TemplaterefComponent } from '../templateref/templateref.component';

@Component({
  selector: 'app-templateref2',
  templateUrl: './templateref2.component.html',
  styleUrls: ['./templateref2.component.scss']
})
export class Templateref2Component implements OnInit {

  constructor() { }

  @Input() getUser?: TemplaterefComponent;
  ngOnInit(): void {
  }

  getUserDetails() {
    console.log(this.getUser);
  }
}
