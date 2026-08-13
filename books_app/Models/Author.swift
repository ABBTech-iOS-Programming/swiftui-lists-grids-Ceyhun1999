import Foundation

struct Author: Identifiable {
    let id = UUID()
    let name: String
    let imageURL: String
    let role: String
    let description: String
}

extension Author {
    static let mockData: [Author] = [
        Author(
            name: "John Freeman",
            imageURL: "https://i.pravatar.cc/300?img=12",
            role: "Writer",
            description: "American writer he was the editor of the"
        ),

        Author(
            name: "Adam Dalva",
            imageURL: "https://i.pravatar.cc/300?img=11",
            role: "Writer",
            description: "He is the senior fiction editor of Guernica magazine"
        ),

        Author(
            name: "Abraham Verghese",
            imageURL: "https://i.pravatar.cc/300?img=13",
            role: "Writer",
            description: "He is the professor and Linda R. Meier"
        ),

        Author(
            name: "Tess Gunty",
            imageURL: "https://i.pravatar.cc/300?img=47",
            role: "Novelist",
            description: "Gunty was born and raised in South Bend, Indiana"
        ),

        Author(
            name: "Ann Napolitano",
            imageURL: "https://i.pravatar.cc/300?img=45",
            role: "Novelist",
            description: "She is the author of the novels A Good Hard"
        ),

        Author(
            name: "Hernan Diaz",
            imageURL: "https://i.pravatar.cc/300?img=14",
            role: "Writer",
            description: "He is an American writer and novelist"
        ),

        Author(
            name: "Richard Perry",
            imageURL: "https://i.pravatar.cc/300?img=15",
            role: "Writer",
            description: "American writer and author"
        )
    ]
}
