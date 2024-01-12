class Book {
  String title;
  String author;
  String ISBN;

  Book({required this.title, required this.author, required this.ISBN});

  @override
  String toString() {
    return 'Title: $title, Author: $author, ISBN: $ISBN';
  }
}

class Library {
  List<Book> bookCollection = [];

  void addBook(Book book) {
    bookCollection.add(book);
    print('Book added to the library: ${book.toString()}');
  }

  void removeBook(String isbn) {
    bookCollection.removeWhere((element) => element.ISBN == isbn);
  }

  void displayBooks() {
    if (bookCollection.isEmpty) {
      print('The library is empty.');
    } else {
      print('Library Collection:');
      for (var book in bookCollection) {
        print(book);
      }
    }
  }
}

void main() {
  var book1 = Book(
      title: 'The Great Gatsby',
      author: 'F. Scott Fitzgerald',
      ISBN: '65468465');
  var book2 = Book(
      title: 'To Kill a Mockingbird', author: 'Harper Lee', ISBN: '16846545');

  var library = Library();

  library.addBook(book1);
  library.addBook(book2);

  library.displayBooks();

  library.removeBook('16846545');
  library.displayBooks();
}
