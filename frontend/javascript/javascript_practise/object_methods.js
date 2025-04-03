let person = {
    name: 'Sravanthi',
    age: 25,
    eyeColor: 'Blue'
};
let valuesarray = Object.values(person);      //Object.values(objName)
console.log(valuesarray);

let obj1 = { a: 1, b: 2, c: 3 };                   // Object.assign(target, sources)
let obj2 = { b: 12, c: 13 };
let obj3 = { c: 23 };
let obj4 = Object.assign({}, obj1, obj2, obj3);
console.log(obj4);

let Animal = {                                      // Object.create(ProtypeObject, properties)
    isHuman: false,
    sound: "Unspecified",
    makeSound() {
        console.log(this.sound);
    },
};

// create object from Animal prototype
let snake = Object.create(Animal);
snake.makeSound(); // Unspecified

// properties can be created  and overridden
snake.sound = "Hiss";
snake.makeSound(); // Hiss

// can also directly initialize object properties with second argument
let properties = {
    isHuman: {
        value: true,
    },
    name: {
        value: "Jack",
        enumerable: true,
        writable: true,
    },
    sound: {
        value: 'Hello',
    },
    introduce: {
        value: function () {
            console.log(`Hey! I am ${this.name}.`);
        },
    },
};
human = Object.create(Animal, properties);
human.introduce(); // Hey! I am Jack.
human.makeSound();

let entriesObj = {
    name: 'Sravanthi',
    age: 20,
    location: 'Ananthapur'
};
console.log(Object.entries(entriesObj));

let obj = {                             // Object.freeze(objectNname) : can not change, add new, delete the properties to an object
    prop: function () { },
    foo: "bar",
};

// freeze the obj object
let o = Object.freeze(obj);

// changes will fail silently
obj.foo = "bar1";
console.log(obj.foo);

// cannot add a new property 
obj.new_foo = "bar";
console.log(obj.new_foo);

//cannot delete property
delete obj.prop;
console.log(obj);


let sealObject = {                         // Object.seal() : can change existing property value and cannot add new property
    name: 'Sravanthi',
    age: 20,
    location: 'Ananthapur'
};
Object.seal(sealObject);
sealObject.name = 'Chitti';      // can change existing property value
sealObject.eyeColor = 'Blue';     // cannot add new property
console.log(sealObject);




