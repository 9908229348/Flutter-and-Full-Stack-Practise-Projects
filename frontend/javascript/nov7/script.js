console.log("javascript intro");
//          data types
// number 
// string 
// boolean
// Date
// null 
// undefined 
// object
// array 
// symbol 
// bigint 

// variable declaraion types
//var
//let
//const

var tripCost = 20000; //number datatype
var names = ["sravs", "teja", "bhavi"]; // array of strings
let tripDate = new Date(); // Date
const tripPlace = "Benglore"; //string
const isEveryoneComing = false; //boolean 

//variable declared but not defined
let returnDate; // undefined
let coming = null; //null

let arrayEx = [                //array of different types
    20000,
    ["sravs", "teja", "buddu"],
    "Bengaluru",
    true,
    null,
];

let obiTripDetails = {            // object 
    tripCost: 20000,
    names: ["sravs", "teja", "Bhavya"],
    tripDate: new Date(),
    tripPlace: "Bengaluru",
    returnDate: null,
    isEveryoneComing: true,
}

const symbol = Symbol("hello");         //Symbol
const alsoHuge = BigInt(9007199254740991);   //bigint



console.log("trip details", tripCost, names, tripDate, tripPlace, returnDate,);
console.log(arrayEx);
console.log(obiTripDetails);
console.log(symbol);
console.log(alsoHuge);

// check the data type of variable
console.log("----------------Data types Present in JavaScript---------")
console.log(typeof tripCost);   //number
console.log(typeof tripPlace);  //string
console.log(typeof isEveryoneComing);   //boolean
console.log(typeof symbol);     //symbol
console.log(typeof alsoHuge);      //bigint
console.log(typeof returnDate);     //undefined


//expect above types remaining all becomes object type
console.log("-------Remaining all becomes object type----------");
console.log(typeof obiTripDetails);
console.log(typeof arrayEx);
console.log(typeof coming);

let a = 30;
let b = '30';

console.log("a==b", a == b);  // it compare only values 
console.log("a===b", a === b); // it compares value and datatype also



