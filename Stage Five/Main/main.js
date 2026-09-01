//console.dir(document);
//console.log(document.domain);
// console.log(document.URL);
 //console.log(document.title);
// document.title = 123;
// console.log(document.doctype);
// console.log(document.head);
// console.log(document.body);
// console.log(document.all);
// console.log(document.all(10));
// //document.all(10).textContent = 'Hello';
// console.log(document.forms[0]);
//console.log(document.links);
// console.log(document.images);

//  //GetElementById
// console.log(document.getElementById('main-header'));
// var headerTitle = document.getElementById('main-header');
// var header = document.getElementById('main-header');
// //console.log(headerTitle);
// headerTitle.textContent = 'Hello';
// //headerTitle.innerText = 'Goodbye';
// headerTitle.innerHTML ="<h3>Go home</h3>";
// headerTitle.style.borderBottom = 'Solid 10px #3333'


// //GetElementByClassName
// var items = document.getElementsByClassName('list-group-item');
// console.log(items);
// console.log(items[1]);
// items[0].textContent = 'Hello';
// items[0].style.fontWeight = 'bold';

// //items[i].style.backgroundColor = '#333';

// for(var i= 0; i < items.length; i++){
//     items[i].style.backgroundColor = 'orange';
// }

// //GetElementsByTagName
// var li = document.getElementsByTagName('li');
// console.log(li);
// console.log(li[1]);
// //i[1].textContent = 'Hello 2';
// li[1].style.backgroundColor='yellow';

// for(var i= 0; i < li.length; i++){
//     li[i].style.backgroundColor = "brown";
// }

// //QuerySelector
// var header = document.querySelector('#main-header');
// header.style.borderBottom = "solid 4px #ccc";

// var input = document.querySelector('input');
// input.value ="items"

// var submit = document.querySelector('input[type= "submit"]');
// submit.value = "CLICK"

// var item = document.querySelector('.list-group-item');
// item.style.color = 'red';

// var lastItem = document.querySelector
// ('.list-group-item:last-child');
// lastItem.style.color="blue";

// var secondItem = document.querySelector('.list-group-item:nth-child(1)');
// secondItem.style.color= 'coral';

// //QUERYSELECTORALL
// var titles = document.querySelectorAll('.title');

// console.log(titles);
// titles[0].textContent = 'Hello';

// var odd = document.querySelectorAll('li:nth-child(odd)');
// var even = document.querySelectorAll('li:nth-child(even)');

// for(var i = 0; i < odd.length; i++){
//     odd[i].style.backgroundColor = 'red';
//     even[i].style.backgroundColor = '#ccc';
// }

//2nd part

//TRAVESRING THE DOM
var itemList = document.querySelector('#items');
// //parentNode
// console.log(itemList.parentNode);
// itemList.parentNode.style.backgroundColor = "#333";
// console.log(itemList.parentNode.parentNode.parentNode);

// //ParentElement
//  console.log(itemList.parentElement);
//  itemList.parentElement.style.backgroundColor = "red";
// console.log(itemList.parentElement.parentElement.parentElement);

// //ChildNodes
// console.log(itemList.childNodes);
// //wont advise using childNodes

// //Children
// console.log(itemList.children);
// console.log(itemList.children[1]);
// itemList.children[1].style.backgroundColor ="yellow";

// //FirstChild
// console.log(itemList.firstChild);

// //FirstElementChild
// console.log(itemList.firstElementChild);
// itemList.firstElementChild.textContent='Hello 1';

// //LastChild
// console.log(itemList.lastChild);

// //LastElementChild
// console.log(itemList.lastElementChild);
// itemList.lastElementChild.style.backgroundColor='yellow';


// //nextSlibling
// console.log(itemList.nextSibling);
// //nextElementSibling
// console.log(itemList.nextElementSibling);

// //PreviousSibling
// console.log(itemList.previousSibling);
// //PrevoiusElementSibling
// console.log(itemList.previousElementSibling);
// itemList.previousElementSibling.style.color ='green';

//CreateElement
var newDiv = document.createElement('div');

//Add class
newDiv.className = "hello";

//Add id
newDiv.id = "hello1";

//Add Attr
newDiv.setAttribute('title', 'Hello Div');

console.log(newDiv);

//Create textNode
var newDivText = document.createTextNode('Hello World');

//Add text to div
newDiv.appendChild(newDivText);

var container = document.querySelector('.col-md-6');
var h1 = document.querySelector('header h1');

console.log(container);
console.log(newDiv);
console.log(h1)

newDiv.style.fontSize = '30px';

container.insertBefore(newDiv, h1);


// //Part 3
// var button = document.getElementById('button').addEventListener('click', buttonClick);

// function buttonClick(e){
    //console.log('Button clicked');
    //document.getElementById('header-title')
//}