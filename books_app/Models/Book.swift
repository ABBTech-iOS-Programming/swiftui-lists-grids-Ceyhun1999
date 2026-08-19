import Foundation

struct Book: Identifiable, Hashable {

    let id = UUID()

    let title: String
    let author: String
    let imageURL: String
    let price: Double
    let discount: Int?
    let vendorImageURL: String
    let description: String
}

extension Book {

    static let mockdata: [Book] = [

        Book(
            title: "The Kite Runner",
            author: "Khaled Hosseini",
            imageURL: "https://covers.openlibrary.org/b/isbn/9781594631931-L.jpg",
            price: 14.99,
            discount: 20,
            vendorImageURL: "https://okmedia.az/img-yeni/resantlogo.png",
            description: "A powerful story about friendship, betrayal, guilt and redemption set against the changing landscape of Afghanistan."
        ),

        Book(
            title: "The Subtle Art of Not Giving a F*ck",
            author: "Mark Manson",
            imageURL: "https://covers.openlibrary.org/b/isbn/9780062457714-L.jpg",
            price: 20.99,
            discount: nil,
            vendorImageURL: "https://okmedia.az/img-yeni/medeksph.png",
            description: "A practical guide about choosing what truly matters in life and learning to accept difficulties instead of avoiding them."
        ),

        Book(
            title: "The Art of War",
            author: "Sun Tzu",
            imageURL: "https://covers.openlibrary.org/b/isbn/9781590302255-L.jpg",
            price: 14.99,
            discount: 15,
            vendorImageURL: "https://okmedia.az/img-yeni/german-hosbital-referanslarlogo.png?=19",
            description: "A classic work on strategy, leadership and conflict that explores how careful planning can lead to victory."
        ),

        Book(
            title: "Harry Potter",
            author: "J. K. Rowling",
            imageURL: "https://covers.openlibrary.org/b/isbn/9780439139601-L.jpg",
            price: 18.99,
            discount: nil,
            vendorImageURL: "https://okmedia.az/img-yeni/okmedia-milla-logo.png",
            description: "A magical adventure following Harry Potter as he discovers the wizarding world and begins his journey at Hogwarts."
        ),

        Book(
            title: "The Great Gatsby",
            author: "F. Scott Fitzgerald",
            imageURL: "https://covers.openlibrary.org/b/isbn/9780743273565-L.jpg",
            price: 12.99,
            discount: 10,
            vendorImageURL: "https://okmedia.az/img-yeni/okmedia-gilan-logo-2.png",
            description: "A story of wealth, love and the American Dream centered around the mysterious millionaire Jay Gatsby."
        ),

        Book(
            title: "To Kill a Mockingbird",
            author: "Harper Lee",
            imageURL: "https://covers.openlibrary.org/b/isbn/9780061120084-L.jpg",
            price: 16.99,
            discount: nil,
            vendorImageURL: "https://okmedia.az/img-yeni/okmedia-femina.png?=424",
            description: "A moving novel about justice, prejudice and childhood seen through the eyes of a young girl growing up in the American South."
        ),

        Book(
            title: "1984",
            author: "George Orwell",
            imageURL: "https://covers.openlibrary.org/b/isbn/9780451524935-L.jpg",
            price: 11.99,
            discount: 25,
            vendorImageURL: "https://okmedia.az/img-yeni/okmedia-casamia-logo.png",
            description: "A dystopian novel about surveillance, control and a society where the government attempts to dominate every part of human life."
        ),

        Book(
            title: "The Catcher in the Rye",
            author: "J. D. Salinger",
            imageURL: "https://covers.openlibrary.org/b/isbn/9780316769488-L.jpg",
            price: 13.99,
            discount: nil,
            vendorImageURL: "https://okmedia.az/img-yeni/okmedia-mnx-logo.png",
            description: "A coming-of-age story following Holden Caulfield as he struggles with identity, loneliness and the adult world."
        ),

        Book(
            title: "Pride and Prejudice",
            author: "Jane Austen",
            imageURL: "https://covers.openlibrary.org/b/isbn/9780141439518-L.jpg",
            price: 10.99,
            discount: 30,
            vendorImageURL: "https://okmedia.az/img-yeni/cbc-logo-okmedia.png",
            description: "A classic romantic novel about Elizabeth Bennet and Mr. Darcy, exploring love, pride, family and social expectations."
        ),

        Book(
            title: "The Hobbit",
            author: "J. R. R. Tolkien",
            imageURL: "https://covers.openlibrary.org/b/isbn/9780547928227-L.jpg",
            price: 17.99,
            discount: nil,
            vendorImageURL: "https://okmedia.az/img-yeni/okmedia-btk-logo.png",
            description: "A fantasy adventure following Bilbo Baggins as he leaves his peaceful home and joins a dangerous journey across Middle-earth."
        )
    ]
}
