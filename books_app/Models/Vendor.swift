import Foundation

struct Vendor: Identifiable {
    let id = UUID()
    let name: String
    let imageURL: String
    let rating: Int
}

extension Vendor {
    static let mockData: [Vendor] = [
        Vendor(
            name: "Resant",
            imageURL: "https://okmedia.az/img-yeni/resantlogo.png",
            rating: 4
        ),

        Vendor(
            name: "Medeks",
            imageURL: "https://okmedia.az/img-yeni/medeksph.png",
            rating: 5
        ),

        Vendor(
            name: "German Hospital",
            imageURL: "https://okmedia.az/img-yeni/german-hosbital-referanslarlogo.png?=19",
            rating: 4
        ),

        Vendor(
            name: "Milla",
            imageURL: "https://okmedia.az/img-yeni/okmedia-milla-logo.png",
            rating: 5
        ),

        Vendor(
            name: "Gilan",
            imageURL: "https://okmedia.az/img-yeni/okmedia-gilan-logo-2.png",
            rating: 4
        ),

        Vendor(
            name: "Femina",
            imageURL: "https://okmedia.az/img-yeni/okmedia-femina.png?=424",
            rating: 4
        ),

        Vendor(
            name: "Casamia",
            imageURL: "https://okmedia.az/img-yeni/okmedia-casamia-logo.png",
            rating: 5
        ),

        Vendor(
            name: "MNX",
            imageURL: "https://okmedia.az/img-yeni/okmedia-mnx-logo.png",
            rating: 4
        ),

        Vendor(
            name: "CBC",
            imageURL: "https://okmedia.az/img-yeni/cbc-logo-okmedia.png",
            rating: 5
        ),

        Vendor(
            name: "Bioloji Təbabət Klinikası",
            imageURL: "https://okmedia.az/img-yeni/okmedia-btk-logo.png",
            rating: 4
        ),

        Vendor(
            name: "Yağmur",
            imageURL: "https://okmedia.az/img-yeni/yagmur.png",
            rating: 4
        ),

        Vendor(
            name: "ASG Group",
            imageURL: "https://okmedia.az/img-yeni/asggroup-okmedia-referanslar.png",
            rating: 5
        ),

        Vendor(
            name: "ADV",
            imageURL: "https://okmedia.az/img-yeni/advlogo.png",
            rating: 4
        ),

        Vendor(
            name: "Pribaltika",
            imageURL: "https://okmedia.az/img-yeni/pribaltika-okmedia-logo-referanslar.png?=34",
            rating: 4
        ),

        Vendor(
            name: "Qaradağ Maşınqayırma",
            imageURL: "https://okmedia.az/img-yeni/qmz-okmedia-referanslar.png",
            rating: 5
        ),

        Vendor(
            name: "Azərbaycan Mikro Kredit",
            imageURL: "https://okmedia.az/img-yeni/okmedia-azerbaycan-mikro.jpg",
            rating: 4
        ),

        Vendor(
            name: "BlueMall",
            imageURL: "https://okmedia.az/img-yeni/okmedia-bluemall.png?=4324",
            rating: 5
        ),

        Vendor(
            name: "Veka",
            imageURL: "https://okmedia.az/img-yeni/veka-okmedia-referanslar-logo.png",
            rating: 4
        )
    ]
}

