//Book Class: Represents a Book
class Book{
    constructor(title, author, isbn){
        this.title=title;
         this.author=author;
          this.isbn=isbn;

    }
}
//UI Class: Handles UI Tasks
class UI {
    static displayBooks(){
       const books = Store.getBooks();

       if (books == null) {
            return false;
       } else {

       }
       books.forEach((book) => UI.addBookToList(book));

    }
//adding book
    static addBookToList(book){
    const list = document.querySelector('#book-list');

    const row = document.createElement('tr');//creates a new row

    row.innerHTML =`
    <td>${book.title}</td>
    <td>${book.author}</td>
    <td>${book.isbn}</td>
    <td>
    <a href = "#" class = "btn btn-warning btn-sm favourite">⭐</a>
    <a href ="#" class="btn btn-danger  btn-sm delete">X</a>
    </td>`;
    {
        /* <a href ="#" class="btn btn-warning btn-sm favourite">⭐</a> */}

    //adding a favourite star feature
    document.querySelector('.favourite').addEventListener('click',(e)=>{
        if(e.target.classList.contains('favourite')){
            console.log("Favourite Clicked!");    
            e.target.closest('tr').style.setProperty("color", "red");
            UI.showAlert('Book marked as favourite', 'success');
        }
    });

    list.appendChild(row);//adds rows to table
        }
    //delete
    static deleteBook(el){
        if(el.classList.contains('delete')){
            el.parentElement.parentElement.remove();
        }
    }


    static showAlert(message, className){
        const div = document.createElement('div');
        div.className =`alert alert-${className}`;
        div.appendChild(document.createTextNode(message));
        const container=document.querySelector(".container");
        const form = document.querySelector("#book-form");
        container.insertBefore(div,form);

        //Vanish in 3 seconds
        setTimeout(() => document.querySelector('.alert').remove(),3000);
    }

    //clearing the feilds
        static clearField(){
            document.querySelector('#title').value='';
            document.querySelector('#author').value='';
            document.querySelector('#isbn').value='';
    }
}

//Store Class: Handles Storage
class Store{
    static getBooks(){
      let books;
      if(localStorage.getItem('books')===null){
        books = [];
      } else{
        books = JSON.parse(localStorage.getItem('books'));
      }
      return books; //
    }

    static addBook(book){
      const books = Store.getBooks();

      books.push(book);

      localStorage.setItem('books', JSON.stringify(books));
    }
    static removeBook(isbn){
      const books = Store.getBooks();

      books.forEach((book,index) =>{
        if(book.isbn === isbn){
            books.splice(index, 1);
        }
      });

      localStorage.setItem('books', JSON.stringify(books));
    }
}

//Event:tr  Display Books
document.addEventListener('DOMContentLoaded', UI.displayBooks);
//Event: Add a Book
document.querySelector('#book-form').addEventListener('submit',(e)=>{
    e.preventDefault();

// Prevent actual submit
    //Get form values
    const title = document.querySelector('#title').value;
    const author = document.querySelector('#author').value;
    const isbn = document.querySelector('#isbn').value;


//Validate
if(title === '' || author ===''|| isbn === ''){
   UI.showAlert('Please fill in all feilds', 'danger');
} else{
    
    //instiate book
    const book = new Book(title, author, isbn);

   // console.log(book)

   //Add Book to UI
   UI.addBookToList(book);
   
   //Add book to store
   Store.addBook(book);


   // Show sucess message
   UI.showAlert('Book Added', 'success');

   //Clear feilds
   UI.clearField();
}
});




//Event: Remove a Book 
// document.querySelector('.delete').addEventListener('click', (e) => {
   
// //Remove book from UI
//     UI.deleteBook(e.target);

//     //Remove book from Store
//     Store.removeBook(e.target.parentElement.previousElementSibling.textContent);

//     // Show sucess message
//     UI.showAlert('Book Removed', 'success');
// });




