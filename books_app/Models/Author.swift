import Foundation

struct Author: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let imageURL: String
    let role: String
    let description: String
    let category: String
}

extension Author {

    static let mockData: [Author] = [
        Author(
            name: "John Freeman",
            imageURL: "https://i.pravatar.cc/300?img=12",
            role: "Writer",
            description: "American writer he was the editor of the",
            category: "Journalists"
        ),

        Author(
            name: "Adam Dalva",
            imageURL: "https://i.pravatar.cc/300?img=11",
            role: "Writer",
            description: "He is the senior fiction editor of Guernica magazine",
            category: "Journalists"
        ),

        Author(
            name: "Abraham Verghese",
            imageURL: "https://i.pravatar.cc/300?img=13",
            role: "Writer",
            description: "He is the professor and Linda R. Meier",
            category: "Novelists"
        ),

        Author(
            name: "Tess Gunty",
            imageURL: "https://i.pravatar.cc/300?img=47",
            role: "Novelist",
            description: "Gunty was born and raised in South Bend, Indiana",
            category: "Novelists"
        ),

        Author(
            name: "Ann Napolitano",
            imageURL: "https://i.pravatar.cc/300?img=45",
            role: "Novelist",
            description: "She is the author of the novels A Good Hard",
            category: "Novelists"
        ),

        Author(
            name: "Hernan Diaz",
            imageURL: "https://i.pravatar.cc/300?img=14",
            role: "Writer",
            description: "He is an American writer and novelist",
            category: "Poets"
        ),

        Author(
            name: "Richard Perry",
            imageURL: "https://i.pravatar.cc/300?img=15",
            role: "Writer",
            description: "American writer and author",
            category: "Playwrights"
        )
    ]

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
