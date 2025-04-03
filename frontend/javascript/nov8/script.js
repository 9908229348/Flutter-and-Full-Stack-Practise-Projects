console.log("working");

// coercion means converting one data type to another (automatically or manually)

let str = '10';
let num = 5;
let bool = true;


//Automatic conversion
const addstrPlusNum = str + num;
const addStrPlusBool = str + bool;
const sudStrMinusNum = str - num;

console.log('automatic conversion of number to string on addition : ' + addstrPlusNum);
console.log("type of result : ", typeof addstrPlusNum);
console.log('automatic conversion of Boolean to string on addition : ' + addStrPlusBool);
console.log("type of result : ", typeof addStrPlusBool);
console.log('automatic conversion of String to number on subtraction : ' + sudStrMinusNum);
console.log("type of result : ", typeof sudStrMinusNum);

//explicit or manual conversion

const convertStrToNuumber = Number(str);
const convertNumToString = String(num);
const convertNumToBool = Boolean(num);  
const convertBoolToString = String(bool);
const convertStringToBool = Boolean(str);

console.log('convertStrToNumber', convertStrToNuumber);
console.log('convertNumToString', convertNumToString);
console.log('convertNumToBool', convertNumToBool);
console.log('convertBoolToString', convertBoolToString);
console.log('convertStringToBool', convertStringToBool);


// falsy values of bool => 0, Null, undefined, "", NaN
//true values of bool => except falsy remaining cases

let nullValue = null;
let undefinedValue;
let zeroNum = 0;        // in case of converting these to boolean then result will be false
let emptyStr = '';


let emptyArray = [];     // in case of converting these to boolean then result will be true
let emptyObj = {};  

//Another way creating variables
let str1 = String('Sravanthi');
let num2 = Number(20);
let bool2 = Boolean(true);

// Comments in JavaScript

//single line comments
/* multi line
    comments
    are here */


// operators

/*

1.Arithmetic -->  +, -, *, ^, /,%, ++, --
2.Assignment --> =, +=, -=, *=, /=, %=, **=
3.Comparision --> ==, ===, !=, !==, >, <, >=, <=, ?
4.Logical -->  &&, ||, !
5.Bitwise  -->  &, |, ~, ^, <<, >> ,>>>   ==> AND,OR,NOT,XOR,LEFTSHIFT,RIGHTSHIFT,UNSIGNED RIGHT SHIFT
6.Type operator --> typeof, instanceof
7.Ternary operator  --> a>b ? a : b
8.String operator  --> + OR CONCATINATION

*/

