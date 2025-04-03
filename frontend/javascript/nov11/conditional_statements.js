console.log("Java script file linked");

//let has Block Scope
let fName;
console.log(fName, "fName");
// let fName = "Navin";  // this is not possible redeclare of a let is not possible
fName = "Navin";
console.log(fName, "fName");
console.log(typeof fName);



//var has Global Scope
var lName;
console.log(lName, "fName");
var lName = "Navin";        // this is possible redeclare of a var is possible
console.log(lName, "fName");
console.log(typeof lName);

//const also Block Scope
// const mName;  // not possible
const mName = "";
// mName = "hello"; //not possible to reassign
console.log(mName);



// Conditional statements

/*
if(condition1){
    //statement here
}else if(condition2){
    //statements
}else{
    //statements
}
*/

/*
switch(choice){
case 1:
    //statements
    break;

case 2:
    //statements
    break;
default:
    break;
}
*/

//Loops

/*
while(condition){
    //statements
}
*/

/*
do{
    //statements
}while(condition)
*/

/*
for (let index = 0; index < array.length; index++) {
    const element = array[index];
    
}
*/
