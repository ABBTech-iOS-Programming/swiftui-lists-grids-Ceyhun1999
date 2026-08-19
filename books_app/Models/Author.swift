import Foundation

struct Author: Identifiable, Hashable {

    let id = UUID()

    let name: String
    let imageURL: String
    let role: String
    let description: String
    let category: String
    let rating: Int
    let books: [Book]
}

// MARK: - Mock Data
extension Author {

    static let mockData: [Author] = [

        Author(
            name: "John Freeman",
            imageURL: "https://i.pravatar.cc/300?img=12",
            role: "Writer",
            description: "John Freeman is an American writer, editor and literary critic. He has worked with many authors and has published several books and essays.",
            category: "Journalists",
            rating: 4,
            books: [
                Book.mockdata[0],
                Book.mockdata[1],
                Book.mockdata[2],
                Book.mockdata[3]
            ]
        ),

        Author(
            name: "Adam Dalva",
            imageURL: "https://i.pravatar.cc/300?img=11",
            role: "Writer",
            description: "Adam Dalva is an American writer and editor. He is known for his work in fiction and has contributed to several literary publications.",
            category: "Journalists",
            rating: 4,
            books: [
                Book.mockdata[1],
                Book.mockdata[4],
                Book.mockdata[5],
                Book.mockdata[6]
            ]
        ),

        Author(
            name: "Abraham Verghese",
            imageURL: "https://i.pravatar.cc/300?img=13",
            role: "Writer",
            description: "Abraham Verghese is a writer and professor known for his literary work and his contributions to medicine and education.",
            category: "Novelists",
            rating: 5,
            books: [
                Book.mockdata[2],
                Book.mockdata[5],
                Book.mockdata[7],
                Book.mockdata[8]
            ]
        ),

        Author(
            name: "Tess Gunty",
            imageURL: "https://i.pravatar.cc/300?img=47",
            role: "Novelist",
            description: "Gunty was born and raised in South Bend, Indiana. She graduated from the University of Notre Dame with a Bachelor of Arts in English.",
            category: "Novelists",
            rating: 4,
            books: [
                Book.mockdata[0],
                Book.mockdata[4],
                Book.mockdata[6],
                Book.mockdata[9]
            ]
        ),

        Author(
            name: "Ann Napolitano",
            imageURL: "https://i.pravatar.cc/300?img=45",
            role: "Novelist",
            description: "Ann Napolitano is an American novelist and author known for writing emotional stories about family, relationships and personal growth.",
            category: "Novelists",
            rating: 5,
            books: [
                Book.mockdata[3],
                Book.mockdata[5],
                Book.mockdata[8],
                Book.mockdata[9]
            ]
        ),

        Author(
            name: "Hernan Diaz",
            imageURL: "https://i.pravatar.cc/300?img=14",
            role: "Writer",
            description: "Hernan Diaz is an American writer and novelist known for his distinctive literary style and critically acclaimed fiction.",
            category: "Poets",
            rating: 4,
            books: [
                Book.mockdata[0],
                Book.mockdata[6],
                Book.mockdata[7],
                Book.mockdata[8]
            ]
        ),

        Author(
            name: "Richard Perry",
            imageURL: "https://i.pravatar.cc/300?img=15",
            role: "Writer",
            description: "Richard Perry is an American writer and author whose work explores literature, culture and contemporary life.",
            category: "Playwrights",
            rating: 3,
            books: [
                Book.mockdata[1],
                Book.mockdata[2],
                Book.mockdata[4],
                Book.mockdata[7]
            ]
        )
    ]
}

// MARK: - Categories
extension Author {

    static var categories: [String] {

        var result = ["All"]

        for author in mockData {

            if !result.contains(author.category) {
                result.append(author.category)
            }
        }

        return result
    }
}

// MARK: - Formatted Values

extension Author {

    var formattedRating: String {
        "\(rating).0"
    }
}
