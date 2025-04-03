const person = {
    fName: 'Sravanthi',
    greet: function () {
        console.log(this.fName, 'from normal function');
    },
    greetArrow: () => {                                     // this won't work in Arrow function
        console.log(this.fName, "from Arrow function");
    }
}

person.greet();
person.greetArrow();
function getName() {                                                 //this is not possible here
    console.log(this, 'from function outside');
}

getName.call(person);               // call getName with person object , then this in getName refer to person

const result = getName.bind(person);  // 
result();

getName.apply(person, ["from apply method"]);


//------------------------ String Methods -----------------------------------

const str = "  Software Developer  ";
const num = 10;
console.log(str.length);
console.log(num.toString());
console.log(str.charAt(4));
console.log(str.includes('Dev'));
console.log(str.indexOf('Dev'));
console.log(str.substring(10));
console.log(str.toUpperCase());
console.log(str.toLowerCase());
console.log(str.trim()); // Removes unnecessary space start and end of variable 
console.log(str.split(' ')); // split by space
console.log(str.replace('Developer', 'SDE'));


//---------------------------------------Number Methods and Math Methods-----------------------
const distance = 99.6736;
const strValue = '15';
console.log(num.toFixed(2));
console.log(Number.isInteger(distance));
console.log(Number.isNaN(Number('hello')));

const mathValue = 10.78;
console.log(Math.round(mathValue));
console.log(Math.ceil(mathValue));
console.log(Math.floor(mathValue));
console.log(Math.trunc(mathValue));
console.log(Math.abs(-7.5));
console.log(Math.min(20, 67, 4.65));
console.log(Math.max(20, 67, 4.65));
console.log(Math.random());

//--------------------------------- Object Methods ---------------------------
let employee = {
    fName: 'Sravanthi',
    Designation: 'Associate Software Developer',
    qualification: 'B.TECH',
    skills: [
        'Flutter', 'Dart'
    ]
}

console.log(Object.keys(employee));
console.log(Object.values(employee));
console.log(Object.entries(employee));
console.log(employee['fName']);

employee.fName = 'Hema';        // change the name
console.log(employee);

delete employee.skills;            // delete property
console.log(employee);

const target = {                    // add two objects
    age: 25
}
Object.assign(employee, target);
console.log(employee);

Object.freeze(employee);  //Prevents the modification of existing property attributes and values, and prevents the addition of new properties

Object.seal(employee);   //Prevents the modification of attributes of existing properties, and prevents the addition of new properties

console.log(Object.hasOwn(employee, 'fName'));



























