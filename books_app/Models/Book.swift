import Foundation

struct Book: Identifiable {
    let id = UUID()
    let title: String
    let author: String
    let imageURL: String
    let price: Double
}

extension Book {
    static let shared: [Book] = [
        Book(
            title: "The Kite Runner",
            author: "Khaled Hosseini",
            imageURL: "https://covers.openlibrary.org/b/isbn/9781594631931-L.jpg",
            price: 14.99
        ),

        Book(
            title: "The Subtle Art of Not Giving a F*ck",
            author: "Mark Manson",
            imageURL: "https://covers.openlibrary.org/b/isbn/9780062457714-L.jpg",
            price: 20.99
        ),

        Book(
            title: "The Art of War",
            author: "Sun Tzu",
            imageURL: "https://covers.openlibrary.org/b/isbn/9781590302255-L.jpg",
            price: 14.99
        ),

        Book(
            title: "Harry Potter",
            author: "J. K. Rowling",
            imageURL: "https://covers.openlibrary.org/b/isbn/9780439139601-L.jpg",
            price: 18.99
        ),

        Book(
            title: "The Great Gatsby",
            author: "F. Scott Fitzgerald",
            imageURL: "https://covers.openlibrary.org/b/isbn/9780743273565-L.jpg",
            price: 12.99
        ),

        Book(
            title: "To Kill a Mockingbird",
            author: "Harper Lee",
            imageURL: "https://covers.openlibrary.org/b/isbn/9780061120084-L.jpg",
            price: 16.99
        ),

        Book(
            title: "1984",
            author: "George Orwell",
            imageURL: "https://covers.openlibrary.org/b/isbn/9780451524935-L.jpg",
            price: 11.99
        ),

        Book(
            title: "The Catcher in the Rye",
            author: "J. D. Salinger",
            imageURL: "https://covers.openlibrary.org/b/isbn/9780316769488-L.jpg",
            price: 13.99
        ),

        Book(
            title: "Pride and Prejudice",
            author: "Jane Austen",
            imageURL: "https://covers.openlibrary.org/b/isbn/9780141439518-L.jpg",
            price: 10.99
        ),

        Book(
            title: "The Hobbit",
            author: "J. R. R. Tolkien",
            imageURL: "https://covers.openlibrary.org/b/isbn/9780547928227-L.jpg",
            price: 17.99
        )
    ]
}
