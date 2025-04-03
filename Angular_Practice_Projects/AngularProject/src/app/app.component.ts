import { Component, ViewChild } from '@angular/core';
import { TemplaterefComponent } from './components/templateref/templateref.component';

// enum Status {
//   Success = 200,
//   UnAuthorized = 401,
//   ServerError = 500,
//   PageNotFound = 404,
// }

// enum EDirection {                           // enum
//   East = 'East',
//   West = 'West',
//   North = 'North',
//   South = 'South',
// }

// type tString = string;              //type alias
// type tUnion = null | Boolean;
// type tNumArray = number[];

// interface IPerson {                    //interface
//   id?: number,
//   name: string,
//   role: string,
//   salary: number
// }

// interface ITotalBillFunction {                                     //Function Signature
//   (qty: number, price: number, count?: number): { total: number }
// }

type Tuser = {
  userName: string
}

interface IEmployee {
  employeeName: string
}

// type ClassObj = {                 //list of key-value pair with dynamic keynames
//   [key: string]: boolean
// }

type Classes = 'active' | 'inactive' | 'highlight';

type ClassObj = Record<Classes, boolean>;

type TUserType = 'Admin' | 'Editor' | 'Guest' | 'Viewer';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {

  //   fName: tString = 'Sravanthi';
  //   isLoggedIn: Boolean = true;
  //   pinCode: Number = 515006;
  //   isAdmin: tUnion = null;
  //   location: null | string = null;
  //   modules: tNumArray = [1, 2, 3, 4];
  //   company: 'A&B' = 'A&B';          //mentioning particular type
  //   tuplesEmp: [username: string, age: number, salary: null | number] = ['Teja', 20, null]; //array of mixed datatypes and specifying type of each
  //   seniorDeveloper: any;                 //any
  //   x: unknown = 'Angular';           // unknown

  //   employee: {
  //     empId: number,
  //     empName: String,
  //     role: string,
  //     salary: number,
  //     skills?: string[]               // optional and array of strings
  //   } = {
  //       empId: 100,
  //       empName: 'Sravanthi',
  //       role: 'Flutter Developer',
  //       salary: 45000,
  //       skills: ['JavaScript', 'Dart', 'Flutter', 'Java'],
  //     };

  //   person: IPerson = {
  //     id: 100,
  //     name: 'Sravanthi',
  //     role: 'Flutter Developer',
  //     salary: 45000
  //   };
  //   studentName: any = [
  //     'Sravanthi',
  //     'Hema',
  //     'Teja',
  //     234,
  //     {},
  //     [],
  //     'Bhavya'
  //   ];
  //   constructor() {
  //   }

  //   getName() {
  //     this.isAdmin = true;
  //     this.location = 'Hyderabad';
  //     this.tuplesEmp = ['sravnthi', 21, 45000];
  //     this.employee = {
  //       empId: 100,
  //       empName: 'Sravanthi',
  //       role: 'Flutter Developer',
  //       salary: 45000,
  //     }
  //     console.log(`fName : ${this.fName}`);
  //   }

  //   totalBill(qty: number, price: number, count?: number): number {     // assign type method parameters and retuen type of method
  //     return qty * price;
  //   }

  //   totalBillWithObjectType(qty: number, price: number): { total: number } {
  //     return {
  //       total: qty * price
  //     }
  //   }

  //   totalWithFunctionSignature: ITotalBillFunction = (qty: number, price: number, count?: number) => {
  //     console.log(typeof qty);
  //     return {
  //       total: qty * price
  //     }
  //   }

  // //generics
  // returnArray<T>(x: T, y: T, z: T) {
  //   return [x, y, z];
  // }

  // ngOnInit(): void {
  //   this.getName();
  //   console.log('Component loaded....');
  //   console.log(this.tuplesEmp);
  //   const bill = this.totalBill(20, 30);
  //   console.log(`bill : ${bill}`);
  //   const billWithObject = this.totalBillWithObjectType(30, 50);
  //   console.log(`bill with Object : ${billWithObject.total}`);

  //   this.seniorDeveloper = 'ABC Developer';
  //   console.log(typeof this.seniorDeveloper, 'senior developer 1');
  //   this.seniorDeveloper = 32;
  //   console.log(typeof this.seniorDeveloper, 'seniorDeveloper 2');

  //   if (typeof this.x === 'string') {
  //     console.log(this.x.includes('Ang'));
  //   }

  //   console.log((this.x as string).length);

  //   const total = this.totalWithFunctionSignature(23, 54);
  //   console.log(total, 'total bill with function signature');

  //   console.log(this.returnArray<number>(2,3,4));                    // generics
  //   console.log(this.returnArray<string>('hello', 'hii', 'welcome'));
  // }

  // -------------------------------------------------------------

  userName: string = 'Sravanthi Kallavai';
  isUserLoggedIn: Boolean = false;
  imgAddress: string = 'https://imageio.forbes.com/specials-images/imageserve/61d52d4e3a76ed81ac034ea8/The-10-Tech-Trends-That-Will-Transform-Our-World/960x0.jpg?height=399&width=711&fit=bounds';
  isDisabled: Boolean = false;

  constructor() {
    setTimeout(() => {
      this.userName = 'Angular Developer';
    }, 3000);
  }

  user: Tuser = {
    userName: 'Bhavya'
  }

  employee: IEmployee = {
    employeeName: 'Hema'
  }

  getName() {
    return this.userName;
  }

  // Event Binding
  onClick(event: MouseEvent) {
    console.log('Onclick called', event);
    console.log('Mouse Event x:', event.clientX);
    console.log('Mouse Event y:', event.clientY);
  }

  handleOnChange(event: Event) {
    const elem = event.target as HTMLInputElement;
    console.log('handleOnChange callled value:', elem.value);
  }

  selectOnChange(event: Event) {
    const elem = event.target as HTMLSelectElement;
    console.log('selectOnChange callled value:', elem.value);
  }

  onCheckbox(event: Event) {
    const elem = event.target as HTMLInputElement;
    console.log('selectOnChange callled value:', elem.checked);
  }

  handleInput(event: Event) {
    const elem = event.target as HTMLInputElement;
    console.log('handleInput callled value:', elem.value);
  }

  handleKeydown(event: KeyboardEvent) {
    const elem = event.target as HTMLInputElement;
    console.log('handleKeydown callled value:', elem.value);
  }

  handleFocus(event: FocusEvent) {
    const elem = event.target as HTMLInputElement;
    console.log('handleFocus callled value:', elem.value);
  }

  handleSubmit(event: SubmitEvent) {
    console.log('handleSubmit called');
  }

  isActive: boolean = true;
  isHighlight: boolean = true;
  colorValue: string = 'black';
  bgColor: string = 'lightblue';

  getClassNames(): ClassObj {
    return {
      'active': this.isActive,
      'inactive': true,
      'highlight': this.isHighlight,
    }
  }

  isStructuralDirective: boolean = true;
  items: string[] = ['item1', 'item2', 'item3'];

  userRole: TUserType = 'Guest';
  besantUserName: string = '';

  userList: string[] = [];
  addUser(): void {
    this.userList.push(this.besantUserName);
    console.log(this.userList);
  }

  userNameFromSibling: string = '';

  getDataFromChild(data: string) {
    this.userNameFromSibling = data;
    console.log(data, 'check here ....................');
  }

  @ViewChild('templateRef') getTemplateRef!: TemplaterefComponent

  ngAfterViewInit(): void {
    console.log(this.getTemplateRef, '************from viewchild******************');
  }
}
