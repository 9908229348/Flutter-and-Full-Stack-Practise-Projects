// Functions in JavaScript
/*
function functionName(){

}
*/

const place = "Madhurai Hotel";
const food = "Dosa";
const qty = 4;
const price = 50;

//function calling
getBill();

//function definition
function getBill() {
    console.log("Function");
    console.log('Bill : ', price * qty);
}

//another way
//Function Expression and Anonymous Function (without name)
const getBill2 = function () {
    console.log("Function Expression and Anonymous Function (without name)");
    console.log('Bill : ', price * qty);
}

getBill2();

// Arrow function
const getBill3 = () => {
    console.log("Arrow Function");
    return console.log('Bill : ', price * qty);
};

getBill3();

function getBill4(price, qty) {
    console.log("Function with Parameters");
    console.log('Bill : ', price * qty);
}

getBill4(price, qty);

function getBill5(price, qty) {
    console.log("Function with return");
    return price * qty;
}

const bill = getBill5(price, qty);
console.log("Bill : ", bill);

//-------------------------------scope :for var, function :  Hoisting(only var variable declaration goes up of running page and can be accessible but value cannot defined) ----------------------------------------
console.log(fName, "Before Declare");
var fName = "Sravanthi";
console.log(fName, "after declaration");

// console.log(lName, "Before Declare"); //this is not possible with let variable
let lName = "Kallavi";
console.log(lName, "after declaration");

// console.log(mName, "Before Declare"); //this is not possible with const
const mName = "Reddy";
console.log(mName, "after declaration");

//scopes : local, function, block, global, lexical

// let , const : Block Scope

// var : Functional Scope

let myName = "Sravanthi";

{
    let letVar = "let";
    var varVar = 'var';
    const constVar = 'const';
    console.log('let variable can be accessible  inside block only : ', letVar);
    console.log('const variable can be accessible inside block : ', constVar);
}

console.log('var variable can be accessible out side block : ', varVar);
// console.log(constVar, letVar); // This is not possible

//----------------------------- closures and lexical Scope in javascript-----------------------------

function outsideFunction(){
    let count = 0;

    return function increment(){
        return count++;
    }
}


const getCount = outsideFunction();

console.log(getCount());
console.log(getCount());
console.log(getCount());
console.log(getCount());

//----------------------------Higher order Functions and Call back Functions------------------------------

