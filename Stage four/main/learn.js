//alert
/*
alert('Hello world');


//Different types of console ; check mdn to try out more
console.log('Hello world');
console.error('This is an error');
console.warn('This is an error');


// variables 
// var, let, const

//let , you can reassign varibles
//const , it cant be chnged , it cant be directly be reassigned
let age = 30;
age = 59;

console.log(age);
// Alwasys use const , unless you know ure going to reassign


//Datatypes

//strings, numbers ,Boolean, null symbol, undefined

const name='John'//string
const age = 30;//number
const isCool = true;//boolean
const rating= 4.5//number
const x = null;
const y = undefined;
let z;

console.log(typeof z);

//Const

const name= 'John';
const age = 30;

//Contenation (Old way)
console.log('My name is '+ name + ' and I am '+ age+' ');

//Temple string (new way)
console.log(`My name is ${name} and I am ${age} `);

const hello=`My name is ${name} and I am ${age} `;

console.log(hello);

//String methods
const s= 'Hello  World';

console.log(s.length);
console.log(s.toUpperCase());
console.log(s.toLowerCase());

console.log(s.substring(1,7).toUpperCase());
console.log(s.split(''));


let p = s.split('');
console.log(p.join(''));


//2nd part , spilting words with,
const s = 'technology, computers, IT, code';

console.log(s.split(','));


//Arrays variables that hold multiple values

//const numbers = new Array(1,2,3,4,5);

const fruits =['apples', 'oranges','pears', 10, true];

fruits[5] = 'lemon';
fruits.push('mangoes');//to the end
fruits.unshift('banana'); //to the front
fruits.pop(); //removes the last one


console.log(Array.isArray(fruits))// to check is sth is in array , it will give a true or false reply

console.log(fruits.indexOf('oranges'));//if you want to get the index of a string or sth , you use that

console.log(fruits);


//OBJECT LITERALS -they are key value pair

const person={
    firstName :'John',
    lastName: 'Doe',
    age:30,
    hobbies:['music','movies', 'sports'],
    address:{
        street:'50 main st',
        city:'Boston',
        state:'MA'
    }
}

console.log(person.lastName, person.firstName);//You can target so many values and separate them with a comma
console.log(person.address.city);
//console.log(person.hobbies[1]); this one is to get a string in a list

//To make the const person parts a variable
const { age,hobbies}=person;
console.log(hobbies[2]);
//Here you can make fist and last name a variable and be able to pull out the values


//If its an emebedded variable 

console.log(person.address.city);

//To add property

person.email="rosarinwaizugbo@gmail.com";
 console.log(person);



//Arrays of TO-DOS

const todos =[
    {
        id: 1,
        text: 'Text out trash',
        isCompleted:true
    },
     {
        id: 2,
        text: 'Meeting with boss',
        isCompleted:true
    },
     {
        id: 3,
        text: 'Dentist appt',
        isCompleted:true
    },
    {
        id:4,
        text:'I want burger',
        isCompleted:false
    }
];

console.log(todos[2])

//JSON ure sending data or recieving one its usually sent in JSON format
//To convert the file to JSON

const todoJSON = JSON.stringify(todos);
console.log(todoJSON);
// the differnece i that the JSON has double quotes


//FOR loop


for(let i= 0; i < todos.length; i++){
    console.log(todos[i].text);//if you want to log out
}

for(let todo of todos ){
   console.log(todo.id);//todo.text
}



for(let i=0; i<=10; i++){
 console.log(`For Loop Number: ${i} `);
 //when you want to add strings
 
}




 

//WHILE LOOP
let i = 0;
while(i < 10){
    console.log(`While Loop Number: ${i}`);
    i++;// You need to increment it unless it wold keep running because the condition i<10 will never be met
}
    


//High Order array methods
//The types: forEach, map, filter

//forEach
todos.forEach(function(todo){
    console.log(todo.text);
});
    
//map
const todoText =todos.map(function(todo){
    return todo.text;
});
console.log(todoText);


//filter
const todoCompleted =todos.filter(function(todo){
    return todo.isCompleted === true;
}).map(function(todo) {
    return todo.text;
}
)
//if we want to return just the text 

console.log(todoCompleted);




//CONDITIONALS

const x= 6;
const y = 11;
if (x > 5 && y >10 ){
    console.log('x is more than 5 or y is more than 10 ')
}
// OR = || , and = &&

if(x === 10){// using the triple equal to , s that it matches the type of datatypes , just in case it changes to string

    console.log('x is 10');
}else if(x>10){
    console.log('x is greater than 10');
}
else{
    console.log('x is less than 10');
}
    
// The one above is much cleaner
if(x > 5){
    if(y>10){

    }
}
    


//Tenary Operation
//shorthand if statement

const x = 11;

const color = x > 10 ? 'red' : 'blue';
// ? is the tenary operator 'then'  and : is the tenary opeartion for 'else'


console.log(color);



//Switch cases

const x = 10;

//const color = 'green ; the default will be used here
const color = x > 10 ? 'red' : 'blue';
switch(color){
    case 'red':
        console.log('color is red');
        break;
    case 'blue':
        console.log('color is blue');
        break;
    default:
        //if it doesnt match any of these
        console.log('color is NOT red or blue');
}

  


//Function

function addNums(num1, num2){
    console.log(num1 + num2);
}

//addNums()
// //here will get NaN ; Not A Number
addNums(5,4);//it will add the numbers, here ure calling it 
   
  

function addNums(num1= 5, num2=1)//setting default parameters for our functions lik the num1=1 

{
   return num1 + num2 ;
}

//addNums()// it wont run with these cause we're return the funtions
console.log(addNums( 3,4));



//Arrow function
const addNums = (num1= 1, num2= 1) =>{
    return num1 + num2;
}
console.log(addNums());//either this one or


//still arrow function
const addNums = (num1= 1, num2= 1) =>{
    console.log(num1 + num2);
}
console.log(addNums(5,4));



//Practice
let i = 1
    while(i <=10 ){
        console.log(`This is a while loop:${i}`);
        i++;
    }


//Still arrow function; if we want to return sth
const addNums = (num1= 1, num2=1) => num1 + num2;

console.log(addNums(5,5));//this one to return sth



//For when you have only one parameter
const addNums = num1 => num1 + 5;

console.log(addNums(102));


//For each
todos.forEach((todo) => console.log(todo));

// 'This 'keyword


//Object oriented programming
//constructive funtions with protypes or ES6 

//Constructor function
function Person(firstName, lastName,dob){
    //set it to property of the object using 'this'
   this.firstName = firstName;
   this.lastName = lastName;
  // this.dob = dob; 
 this.dob = new Date(dob);//it will show the actual value of the time 
  // To add methods to the person object

  //here with prototypes you can get rid of this part 
  this.getBirthYear = function(){
    return this.dob.getFullYear();
  }
  this.getFullName = function(){
   return `${this.firstName} ${this.lastName}`;
  }
}

/*
//Protypes a more better way to write those funcions
Person.prototype.getBirthYear = function(){
     return this.dob.getFullYear();
}

Person.prototype.getFulName = function(){
      return `${this.firstName} ${this.lastName}`;
  
}
      

//instantiate object
const person1 = new Person('sari', 'Nwaizu', '7-02-2001');
const person2 = new Person('mary', 'Smith', '02-12-2010');


console.log(person2.getFullName());
//console.log(person1);
console.log(person1.getBirthYear());
console.log(person1.getFullName());
console.log(person2.dob.getFullYear());
console.log(person1)

*/
//ES6  ; Just a prettier way to write it but it does the same thing with constructor prototypes

//class ..is doing the same thing a above just a prettier way
class Person{
    constructor(firstName, lastName,dob){
   this.firstName = firstName;
   this.lastName = lastName;
   this.dob = new Date(dob);
    }
    getBirthYear(){
      return this.dob.getFullYear() ; 
    }

    getFulName(){
        return `${this.firstName} ${this.lastName}`;
    }
}

//instantiate object
const person1 = new Person('sari', 'Nwaizu', '7-02-2001');
const person2 = new Person('mary', 'Smith', '02-12-2010');


console.log(person2.getFulName());
console.log(person1.getBirthYear());
console.log(person1);


