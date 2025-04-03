//--------------Object-------------------------------

let user1 = {
    name: 'Sravanthi',          // properties
    age: 25,
    location: 'Hyderabad',
    skills: [
        'TypeScript', 'JavaScript', 'AngularJS'
    ],

    login() {                   // methods
        console.log('Login');
    },

    logout() {
        console.log('LogOut');

    }
};

let user2 = {
    name: 'Hema',
    age: 26,
    location: 'Atp',
    skills: [
        'TypeScript', 'JavaScript', 'AngularJS'
    ],

    login() {
        console.log('Login');
    },

    logout() {
        console.log('LogOut');

    }
};

//=====================    Class   ================================

class User {

    constructor(name, age, location, skills) {
        this._name = name;
        this._age = age;
        this._location = location;
        this._skills = skills;
    }

    login() {
        console.log('Login', this._name);
    }

    logout() {
        console.log('LogOut', this._name);

    }
}

const userOne = new User("Sravanthi", 25, "Hyderabad", ["Flutter", "Dart", "Java"]);
console.log(userOne._skills);
console.log(userOne.login());

const userTwo = new User("Hema", 26, "ATP", ["TypeSCript", "AngularJS"]);
console.log(userTwo.logout());

class PaidUser extends User {
    constructor(name, age, location, skills) {
        super(name, age, location, skills);
    }
    message() {
        console.log("You are Paid Uesr");
    }

    //override
    login() {
        console.log("You are logged in as Paid user");
    }
}

const paidUser = new PaidUser("Sravanthi", 22, "Bengaluru", ["Flutter", "Dart"]);

console.log(paidUser.message());
console.log(paidUser.login());
console.log(paidUser.logout());

class Temterature {
    constructor(temp) {
        this._temp = temp;
    }

    // Getters and Setters
    get getTemp() {
        return "Temp is " + this._temp;
    }

    set setTemp(value){
        this._temp = value;
    }
}

const value = new Temterature(26);

console.log(value.getTemp);
value.setTemp = 30;
console.log(value.getTemp);


// String Methods

const fName = "Kallavai";
console.log(typeof fName);
console.log(fName.length);










