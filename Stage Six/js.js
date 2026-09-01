// Book Class
class Book {
  constructor(title, author, isbn, favourite = false) {
    this.title = title;
    this.author = author;
    this.isbn = isbn;
    this.favourite = favourite;
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
    // store isbn on the row for easy access
    row.dataset.isbn = book.isbn;

    row.innerHTML = `
      <td>${book.title}</td>
      <td>${book.author}</td>
      <td>${book.isbn}</td>
      <td>
        <a href="#" class="btn btn-sm favourite" title="Toggle favourite">${book.favourite ? '★' : '☆'}</a>
        <a href="#" class="btn btn-danger btn-sm delete">X</a>
      </td>
    `;

    // If favourite, add class to change color
    const favButton = row.querySelector('.favourite');
    if (book.favourite) favButton.classList.add('is-favourite');

    list.appendChild(row);
  }

  static deleteBook(el) {
    if (el.classList.contains('delete')) {
      el.closest('tr').remove();
    }
  }

  static toggleFavouriteButton(el) {
    if (!el.classList.contains('favourite')) return;

    // Toggle UI state
    const nowFav = el.classList.toggle('is-favourite');
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
    const data = localStorage.getItem('books');
    return data ? JSON.parse(data) : [];
  }

  static saveBooks(books) {
    localStorage.setItem('books', JSON.stringify(books));
  }

  static addBook(book) {
    const books = Store.getBooks();
    books.push(book);
    Store.saveBooks(books);
  }

  static removeBook(isbn) {
    const books = Store.getBooks().filter((b) => b.isbn !== isbn);
    Store.saveBooks(books);
  }

  static toggleFavourite(isbn) {
    const books = Store.getBooks().map((b) => {
      if (b.isbn === isbn) {
        return { ...b, favourite: !b.favourite };
      }
      return b;
    });
    Store.saveBooks(books);
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
    // new books default to not favourite
    const book = new Book(title, author, isbn, false);
    UI.addBookToList(book);
    Store.addBook(book);
    UI.showAlert('Book Added', 'success');
    UI.clearField();
  }
});





// For the two special buttons
document.querySelector('#book-list').addEventListener('click', (e) => {
  const target = e.target;

  // DELETE
  if (target.classList.contains('delete')) {
    const tr = target.closest('tr');
    const isbn = tr ? tr.dataset.isbn:null;
    UI.deleteBook(target);
    if (isbn) Store.removeBook(isbn);
    UI.showAlert('Book Removed', 'success');
    return;
  }

  // FAVOURITE toggle
  if (target.classList.contains('favourite')) {
    const tr = target.closest('tr');
    const isbn = tr ? tr.dataset.isbn:null;
    UI.toggleFavouriteButton(target);
    if (isbn) Store.toggleFavourite(isbn);
    return;
  }
});