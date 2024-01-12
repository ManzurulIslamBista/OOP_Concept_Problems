class Book {
  String title;
  String author;
  String ISBN;

  Book({required this.title, required this.author, required this.ISBN});
}

class AddRemove {
  List<Book> bk = [];

  void add(Book addbook) {
    bk.add(addbook);
    print("'${addbook.title}' book added");
  }

  void remove(String isbn) {
    bk.removeWhere((book) => book.ISBN == isbn);
    print("Book with ISBN $isbn removed");
  }

  void Show_book_list() {
    bk.forEach((element) {
      print("Title : '${element.title}' Author : ${element.author}");
    });
  }
}

void main() {
  Book obj = Book(title: "Story of a man", author: "ab9d", ISBN: "5847512");
  Book obj2 = Book(title: "Story of a man2", author: "ab9d", ISBN: "85478546");

  AddRemove book = AddRemove();
  book.add(obj);
  book.add(obj2);
  book.remove("5847512");
  book.Show_book_list();
}
