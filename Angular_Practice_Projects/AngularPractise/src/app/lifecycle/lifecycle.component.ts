import { Component, Input, OnInit, SimpleChanges } from '@angular/core';

@Component({
  selector: 'app-lifecycle',
  templateUrl: './lifecycle.component.html',
  styleUrls: ['./lifecycle.component.scss']
})
export class LifecycleComponent implements OnInit {

  @Input('emailId') emailId: string = '';

  course: string = 'Angular';
  skill: string[] = [
    'typescript',
    'Rxjs',
    'Scss',
    'Git'
  ]

  constructor() {
    console.log('***********lifecycle constructor************');      //generally for dependancy injection
    console.log(this.emailId, 'email');                             //email id is undefined here
    console.log(this.skill, 'skill');
    console.log(this.course, 'course');
  }

  ngOnChanges(changes: SimpleChanges): void {
    //Called before any other lifecycle hook. Use it to inject dependencies, but avoid any serious work here.
    //Add '${implements OnChanges}' to the class.
    console.log('******ngOnChanges***************');
    
    
  }

  ngDoCheck(): void {
    //Called every time that the input properties of a component or a directive are checked. Use it to extend change detection by performing a custom check.
    //Add 'implements DoCheck' to the class.
    
  }

  ngOnInit(): void {
    console.log('***********lifecycle ngOnInit************');      //api calls
    console.log(this.emailId, 'email');                                //emailid present
    console.log(this.skill, 'skill');
    console.log(this.course, 'course');
  }

  ngAfterContentInit(): void {
    //Called after ngOnInit when the component's or directive's content has been initialized.
    //Add 'implements AfterContentInit' to the class.
    console.log('***********lifecycle ngAfterContentInit************');      
    console.log(this.emailId, 'email');                                
    console.log(this.skill, 'skill');
    console.log(this.course, 'course');
  }

  ngAfterContentChecked(): void {
    //Called after every check of the component's or directive's content.
    //Add 'implements AfterContentChecked' to the class.
    console.log('***********lifecycle ngAfterContentChecked************');  
    console.log('emailId in ngAfterContentChecked', this.emailId);
        
    
  }

  ngAfterViewInit(): void {
    //Called after ngAfterContentInit when the component's view has been initialized. Applies to components only.
    //Add 'implements AfterViewInit' to the class.
    console.log('***********lifecycle ngAfterViewInit************');      
    
  }

  isAdmin: boolean=true

  ngOnDestroy(): void {
    //Called once, before the instance is destroyed.
    //Add 'implements OnDestroy' to the class.
    
  }
}
