// Book Class
class Book {
  constructor(title, author, isbn) {
    this.title = title;
    this.author = author;
    this.isbn = isbn;
  }
}

// UI Class
class UI {
  static displayBooks() {
    const books = Store.getBooks();
    books.forEach((book) => UI.addBookToList(book));
  }

  static addBookToList(book) {
    const list = document.querySelector('#book-list');
    const row = document.createElement('tr');

    // Favourite button starts as an outline star (☆)
    row.innerHTML = `
      <td>${book.title}</td>
      <td>${book.author}</td>
      <td>${book.isbn}</td>
      <td>
        <a href="#" class="btn btn-warning btn-sm favourite" title="Mark favourite">☆</a>
        <a href="#" class="btn btn-danger btn-sm delete">X</a>
      </td>
    `;
    list.appendChild(row);
  }

  static deleteBook(el) {
    if (el.classList.contains('delete')) {
      el.closest('tr').remove();
    }
  }

  static toggleFavourite(el) {
    if (!el.classList.contains('favourite')) return;

    // Toggle the fav class that changes color
    const nowFav = el.classList.toggle('is-favourite');

    // Switch star character: filled ★ when favourited, outline ☆ otherwise
    el.textContent = nowFav ? '★' : '☆';
  }

  static showAlert(message, className) {
    const div = document.createElement('div');
    div.className = `alert alert-${className}`;
    div.appendChild(document.createTextNode(message));
    const container = document.querySelector('.container');
    const form = document.querySelector('#book-form');
    container.insertBefore(div, form);

    // Vanish in 3 seconds
    setTimeout(() => {
      const a = document.querySelector('.alert');
      if (a) a.remove();
    }, 3000);
  }

  static clearField() {
    document.querySelector('#title').value = '';
    document.querySelector('#author').value = '';
    document.querySelector('#isbn').value = '';
  }
}

// Store Class 
class Store {
  static getBooks() {
    let books;
    if (localStorage.getItem('books') === null) {
      books = [];
    } else {
      books = JSON.parse(localStorage.getItem('books'));
    }
    return books;
  }

  static addBook(book) {
    const books = Store.getBooks();
    books.push(book);
    localStorage.setItem('books', JSON.stringify(books));
  }

  static removeBook(isbn) {
    const books = Store.getBooks();
    const filtered = books.filter((book) => book.isbn !== isbn);
    localStorage.setItem('books', JSON.stringify(filtered));
  }
}

// Events
document.addEventListener('DOMContentLoaded', UI.displayBooks);

// Add a Book
document.querySelector('#book-form').addEventListener('submit', (e) => {
  e.preventDefault();

  const title = document.querySelector('#title').value.trim();
  const author = document.querySelector('#author').value.trim();
  const isbn = document.querySelector('#isbn').value.trim();

  if (title === '' || author === '' || isbn === '') {
    UI.showAlert('Please fill in all fields', 'danger');
  } else {
    const book = new Book(title, author, isbn);
    UI.addBookToList(book);
    Store.addBook(book);
    UI.showAlert('Book Added', 'success');
    UI.clearField();
  }
});

// Delegated click handler on book list
document.querySelector('#book-list').addEventListener('click', (e) => {
  const target = e.target;

  if (target.classList.contains('delete')) {
    UI.deleteBook(target);
    const isbn = target.closest('tr').querySelector('td:nth-child(3)').textContent.trim();
    Store.removeBook(isbn);
    UI.showAlert('Book Removed', 'success');
    return;
  }

  if (target.classList.contains('favourite')) {
    UI.toggleFavourite(target);
    UI.showAlert('This book is your Favourite', 'success');
    return;
  }
});