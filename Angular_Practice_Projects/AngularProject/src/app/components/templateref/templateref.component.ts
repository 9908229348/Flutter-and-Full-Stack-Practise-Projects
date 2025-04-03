import { Component, ElementRef, Input, OnInit, QueryList, ViewChild, ViewChildren } from '@angular/core';

@Component({
  selector: 'app-templateref',
  templateUrl: './templateref.component.html',
  styleUrls: ['./templateref.component.scss']
})
export class TemplaterefComponent implements OnInit {

  constructor() { }

  user: { name: string } = { name: '' };

  ngOnInit(): void {
  }

  submitEmail(element: HTMLInputElement) {
    console.log("email", element.value);
    console.log("submit email click", element);
  }

  // View Child: return first matching and let you to access and modify the DOM Component 

  @ViewChild('userEmail') inputEle!: ElementRef

  submitEmailByViewChild() {
    console.log(this.inputEle.nativeElement.value);
  }

  @ViewChildren('userEmailFromViewChildren') inputEmails!: QueryList<ElementRef>

  submitEmailsFromViewChildren() {
    console.log('************submitEmailsFromViewChildren**********************');
    this.inputEmails.map(ele => console.log(ele.nativeElement.value));
  }
  isUser: Boolean = false
}
