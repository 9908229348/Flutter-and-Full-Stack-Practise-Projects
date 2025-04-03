// console.log("ways to achieve asynchronous :\n 1. Call back Function\n 2. Promise\n 3. async and await");

// //Call back function : function that is passes as an argument to another function

// console.log('Oreder is placed');


// function makeCoffee(callback) {
//     setTimeout(() => {
//         callback('Your coffee is ready');
//     }, 3000);
// }

// console.log('Waiting for the coffee........');

// makeCoffee(function (result) {
//     console.log(result);
// });

// console.log('Doing other things while waiting');

//promise : three states fullfilled, pending(initial), failed

// function simplePromise() {
//     return new Promise((resolve, reject) => {
//         setTimeout(() => {
//             resolve("Good Morning");
//             // reject("Coffee is not ready");
//         }, 2000);
//     });
// }

// simplePromise().then((result) =>
//     console.log(result)).catch((error) =>
//         console.log(error)).finally(() =>
//             console.log('server responded'));

// -----------------------async await---------------------------------------

function makeCoffeeasync() {
    setTimeout(() => {
        console.log('Your coffee is ready');
    }, 3000);
}

async function prepareCoffee() {
    try {
        const coffee = await makeCoffeeasync();
    } catch (error) {
        console.log(error);
    }
}

prepareCoffee();
