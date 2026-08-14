import Foundation

enum VendorCategory: String, CaseIterable {
    case all = "All"
    case books = "Books"
    case poems = "Poems"
    case special = "Special for you"
    case stationery = "Stationery"
}


struct Vendor: Identifiable {
    let id = UUID()
    let name: String
    let imageURL: String
    let rating: Int
    let category: VendorCategory
}

extension Vendor {
    static let mockData: [Vendor] = [
        Vendor(
            name: "Resant",
            imageURL: "https://okmedia.az/img-yeni/resantlogo.png",
            rating: 4,
            category: .books
        ),

        Vendor(
            name: "Medeks",
            imageURL: "https://okmedia.az/img-yeni/medeksph.png",
            rating: 5,
            category: .poems
        ),

        Vendor(
            name: "German Hospital",
            imageURL: "https://okmedia.az/img-yeni/german-hosbital-referanslarlogo.png?=19",
            rating: 4,
            category: .special
        ),

        Vendor(
            name: "Milla",
            imageURL: "https://okmedia.az/img-yeni/okmedia-milla-logo.png",
            rating: 5,
            category: .stationery
        ),

        Vendor(
            name: "Gilan",
            imageURL: "https://okmedia.az/img-yeni/okmedia-gilan-logo-2.png",
            rating: 4,
            category: .books
        ),

        Vendor(
            name: "Femina",
            imageURL: "https://okmedia.az/img-yeni/okmedia-femina.png?=424",
            rating: 4,
            category: .poems
        ),

        Vendor(
            name: "Casamia",
            imageURL: "https://okmedia.az/img-yeni/okmedia-casamia-logo.png",
            rating: 5,
            category: .special
        ),

        Vendor(
            name: "MNX",
            imageURL: "https://okmedia.az/img-yeni/okmedia-mnx-logo.png",
            rating: 4,
            category: .stationery
        ),

        Vendor(
            name: "CBC",
            imageURL: "https://okmedia.az/img-yeni/cbc-logo-okmedia.png",
            rating: 5,
            category: .books
        ),

        Vendor(
            name: "Bioloji Təbabət Klinikası",
            imageURL: "https://okmedia.az/img-yeni/okmedia-btk-logo.png",
            rating: 4,
            category: .poems
        ),

        Vendor(
            name: "Yağmur",
            imageURL: "https://okmedia.az/img-yeni/yagmur.png",
            rating: 4,
            category: .special
        ),

        Vendor(
            name: "ASG Group",
            imageURL: "https://okmedia.az/img-yeni/asggroup-okmedia-referanslar.png",
            rating: 5,
            category: .stationery
        ),

        Vendor(
            name: "ADV",
            imageURL: "https://okmedia.az/img-yeni/advlogo.png",
            rating: 4,
            category: .books
        ),

        Vendor(
            name: "Pribaltika",
            imageURL: "https://okmedia.az/img-yeni/pribaltika-okmedia-logo-referanslar.png?=34",
            rating: 4,
            category: .poems
        ),

        Vendor(
            name: "Qaradağ Maşınqayırma",
            imageURL: "https://okmedia.az/img-yeni/qmz-okmedia-referanslar.png",
            rating: 5,
            category: .special
        ),

        Vendor(
            name: "Azərbaycan Mikro Kredit",
            imageURL: "https://okmedia.az/img-yeni/okmedia-azerbaycan-mikro.jpg",
            rating: 4,
            category: .stationery
        ),

        Vendor(
            name: "BlueMall",
            imageURL: "https://okmedia.az/img-yeni/okmedia-bluemall.png?=4324",
            rating: 5,
            category: .books
        ),

        Vendor(
            name: "Veka",
            imageURL: "https://okmedia.az/img-yeni/veka-okmedia-referanslar-logo.png",
            rating: 4,
            category: .special
        )
    ]
}
