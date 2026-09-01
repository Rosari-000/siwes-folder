/*
console.log(window);//parent object of the browser
alert(1);



//Single element selector
//console.log(document.getElementById('my-form'));
//const form= document.getElementById('my-form');
//console.log(form);

//console.log(document.querySelector('h1'));

//Multiple selector
//console.log(document.querySelectorAll('.item'));

//older ones
//console.log(document.getElementsByClassName('item'));//you can use array methods on

//console.log(document.getElementsByTagName('li'));


const items = document.querySelectorAll('.item');

items.forEach((item) => console.log(item));


//Manipulation; changing the DOM ; the user interface
const ul = document.querySelector('.items');


//ul.remove();
//ul.lastElementChild.remove();

ul.firstElementChild.textContent= 'coding';
//ul.children[2].innerText= 'Brad';
ul.lastElementChild.innerHTML= '<h1>Hello</h1>';


const btn = document.querySelector('.btn');
btn.style.color= 'blue';


//Events
const btn =document.querySelector('.btn');

btn.addEventListener('click',(e) =>{ //click,mouseout
    e.preventDefault();
    //console.log(e.target.id);//you can get any attribute of the extent you click
    
    document.querySelector('#my-form').style.background = 
    '#494141';
    document.querySelector('body').classList.add('bg-dark');
    document.querySelector('.items')
    .lastElementChild.innerHTML='<h1>Hello</h1>';
});
*/


const myForm = document.querySelector('#my-form');
const nameInput= document.querySelector('#name');
const emailInput = document.querySelector('#email');
const msg = document.querySelector('.msg');
const userList = document.querySelector('#users');

myForm.addEventListener('submit', onSubmit);

function onSubmit(e) {
    e.preventDefault();





    if(nameInput.value === '' || emailInput.value === ''){
       // alert('please enter feilds');
       msg.classList.add('error');
       msg.innerHTML = 'Please enter fields';

       setTimeout(() => msg.remove(), 3000);
} else{
    const li = document.createElement('li');
    li.appendChild(document.createTextNode(`${nameInput.value} : ${emailInput.value}`));
   //console.log('success');

   userList.appendChild(li);

   //Clear feilds
   nameInput.value = '';
   emailInput.value = '';
}
}

