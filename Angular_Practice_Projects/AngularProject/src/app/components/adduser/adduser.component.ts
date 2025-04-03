import { Component, OnInit,Input } from '@angular/core';

@Component({
  selector: 'app-adduser',
  templateUrl: './adduser.component.html',
  styleUrls: ['./adduser.component.scss']
})
export class AdduserComponent implements OnInit {

  @Input() User: string = '';
  @Input() userName: string = '';

  constructor() { }

  ngOnInit(): void {
  }

}
