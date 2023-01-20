import Book "book";
import List "mo:base/List";
import Text "mo:base/Text";

actor {
    type Book = Book.Book;
 /*6. In `main.mo` import the type **List** from the Base Library and create a list that stores books. */
   public type List<T> = ?(T, List<T>);
    var book_list : List<Book> = null;
   
/*7. In `main.mo` create a function called `add_book` that takes a book as parameter and returns nothing this function should add this book to your list. 
Then create a second function called `get_books` that takes no parameter but returns an **Array** that contains all books stored in the list.*/
   
   public func add_Book(book : Book) {
    book_list := List.push<Book>(book, book_list)
   };

   public func get_Books() : async [Book] {
    return List.toArray<Book>(book_list);
   };
}