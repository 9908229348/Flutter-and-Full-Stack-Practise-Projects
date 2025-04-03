import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-dashboard',            //element selector
  // selector: "[app-component]",       //attribute selector
  // selector: '.app-dashboard'         //class selector
  // selector: '#app-dashboard',        //id selector
  // templateUrl: './dashboard.component.html',
  template: `
  <p> DashBoard Component </p>
  <p> DashBoard component 2 </p>
  `,                                                  //for simple components with simple logic and elements
  styleUrls: ['./dashboard.component.scss', '../app.component.scss']               //for multiple style sheets and last style sheet will override already existed styles to component
  // styles: [                                       //for simple styles
  //   `
  //   p{
  //   background-color:light-blue,
  //   color: yellow
  //   }

  //   `
  // ]
})
export class DashboardComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

}
