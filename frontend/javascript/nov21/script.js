// console.log('Start');

// setTimeout(() => {
//     console.log('Completed');
// }, 3000);

// console.log('end');

const statusStrings = [
    'Adding sugar',
    'Add milk',
    'Halfway there',
    'Almost done',
    'Just seconds left'
];

let progressIndex = 0;

console.log('Order Placed');
const intervalId = setInterval(() => {
    if (progressIndex < statusStrings.length) {
        console.log(statusStrings[progressIndex]);
        progressIndex++;
    }
}, 1000);

setTimeout(() => {
    console.log('Coffee ready');
    clearInterval(intervalId);

}, 6000);

console.log('Waiting.............');











