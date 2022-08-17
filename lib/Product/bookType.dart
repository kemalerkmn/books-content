// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, file_names
class BookType {
  String bookTypeImage;
  BookType({
    required this.bookTypeImage,
  });
}

List<BookType> BookTypes = [
  BookType(bookTypeImage: "assets/images/book-type/action-and-adventure.png"),
  BookType(bookTypeImage: "assets/images/book-type/classcis.png"),
  BookType(bookTypeImage: "assets/images/book-type/classic.png"),
  BookType(bookTypeImage: "assets/images/book-type/detective-and-mystery.png"),
  BookType(bookTypeImage: "assets/images/book-type/historical-fiction.png"),
  BookType(bookTypeImage: "assets/images/book-type/honor.png"),
];
