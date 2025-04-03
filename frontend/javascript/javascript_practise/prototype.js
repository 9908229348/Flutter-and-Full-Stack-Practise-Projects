let person  = {
    eats: true,
    hasLegs: 2,
    walks(){ console.log('I can walk')}
  }
  //define another object
  let man = {
    hasBreast: false,
    hasBeard : true,
  
  }
  //set the prototype of man to person object
  man.__proto__ = person;
  //define a third object
  let samuel = {
     age: 23
  }
  //set the prototype of samuel to man
  samuel.__proto__ = man;
  //access walk method from samuel
  console.log(samuel.walks());
  //access hasBeard from samuel
  console.log(samuel.hasBeard);


console.log(samuel);







