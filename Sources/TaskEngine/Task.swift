import Foundation

/// A single quest bestowed upon the player.
struct Task: Identifiable {
    let id = UUID()
    let title: String
    let prompt: String
    let category: Category
    let reward: String?

    enum Category: String {
        case cleaning, selfCare = "self-care", chaos
    }
}
