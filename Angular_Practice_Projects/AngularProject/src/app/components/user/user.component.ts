import { Component, EventEmitter, OnInit, Input, Output } from '@angular/core';

@Component({
  selector: 'app-user',
  templateUrl: './user.component.html',
  styleUrls: ['./user.component.scss']
})
export class UserComponent implements OnInit {



  @Input() UserName: string = '';
  @Output() name = new EventEmitter<string>();

  constructor() { }

  ngOnInit(): void {
  }

  sentDatafromChild(){
    this.name.emit('Data coming from child component');
  }

}
