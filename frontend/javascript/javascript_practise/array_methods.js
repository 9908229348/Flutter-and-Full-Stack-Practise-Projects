//--------------------Array Methods------------------------
let array1 = ["Javascript", "Python", "Java", ["Dart", "Flutter"]];
let arra2 = ["c", "c++", "c#"];

let concatResult = array1.concat("lua", arra2); //concat
console.log(concatResult);

let numbers = [1, 2, 3, 4, 5, 6];               //every
let result = numbers.every(ele => ele > 5);
console.log(result);

let languages = ["Javascript", "Python", "C", "C#", "Java"];  //fill
languages.fill("Dart", 1, 3); //fill with Dart from 1 to 3 indices
console.log(languages);
languages.fill("Hello"); // all will be replaced with Hello
console.log(languages);

const prices = [1800, 2000, 4000, null, 5000, 6000, "Thousand"];     //filter
let newPrices = prices.filter((value) => value > 4000 && !Number.isNaN(value));
console.log(newPrices);

let findArray = [1, 4, 6, 8, 5];
let firstEvenNumber = findArray.find((value) => value % 2 == 0); //find
console.log(firstEvenNumber);
let firstEvenNumIndex = findArray.findIndex((value) => value % 2 == 0); //findIndex
console.log(firstEvenNumIndex);

let forEachArray = [1800, 2000, , 3000, 4000, 5000]; //foreach skips elements without value 
forEachArray.forEach((value, index) => {
    console.log("element at " + index + " is " + value);
});

let check = array1.includes("Java");  //includes
console.log(check);

let joinResult = array1.join(" | ");  //join
console.log(joinResult);

const employees = [
    { name: "Adam", salary: 5000, bonus: 500, tax: 1000 },  //map
    { name: "Noah", salary: 8000, bonus: 1500, tax: 2500 },
    { name: "Fabiano", salary: 1500, bonus: 500, tax: 200 },
    { name: "Alireza", salary: 4500, bonus: 1000, tax: 900 },
];
let mapResult = employees.map((empl) => {
    const newObj = {};
    newObj.name = empl.name;
    newObj.netAmount = empl.bonus + empl.salary + empl.tax;
    return newObj;
});
console.log(mapResult);

let fruits = Array.of("Apple", "Banana", "Guava"); //of
console.log(fruits);

let ageGroup = [18, 21, 1, 1, 51, 18, 21, 5, 18, 7, 10]; // reduce
let uniqueAgeGroup = ageGroup.reduce(function (accumulator, currentValue) {
  if (accumulator.indexOf(currentValue) === -1) {
    accumulator.push(currentValue);
  }
  return accumulator;
}, []);
console.log(uniqueAgeGroup); // [ 18, 21, 1, 51, 5, 7, 10 ]

let sliceArray = [2, 3, 5, 7, 11, 13, 17];                    //slice
// create another array by slicing numbers from index 3 to 5
let newArray = sliceArray.slice(3, 6);
console.log(newArray); // Output: [ 7, 11, 13 ]

let prime_numbers = [2, 3, 5, 7, 9, 11];

// replace 1 element from index 4 by 13                  //splice
let removedElement = prime_numbers.splice(4, 1, 13);
console.log(removedElement);
console.log(prime_numbers);
// Output: [ 9 ]
//         [ 2, 3, 5, 7, 13, 11 ]

let shiftArray = ["English", "Java", "Python", "JavaScript"];        //shift
// removes the first element of the array
let first = shiftArray.shift();
console.log(first);
console.log(shiftArray);
// Output: English
//         [ 'Java', 'Python', 'JavaScript' ]


let unshiftArray = ["Java", "Python", "C"];        //unshift
// add "JavaScript" at the beginning of the array
unshiftArray.unshift("JavaScript");
console.log(unshiftArray);
// Output: [ 'JavaScript', 'Java', 'Python', 'C' ]














