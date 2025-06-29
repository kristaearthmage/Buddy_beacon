import Foundation

/// Modes of play for Buddy Beacon quests.
enum GameMode: String, CaseIterable, Identifiable {
    case quickShuffle = "Quick Shuffle"
    case challengeQuest = "Challenge Quest"
    case fizzleGoblin = "Fizzle Goblin"

    var id: String { rawValue }

    /// Adjusts the tempo or flavor of tasks.
    var description: String {
        switch self {
        case .quickShuffle:
            return "Swift and breezy chores for a touch of daily sparkle."
        case .challengeQuest:
            return "Epic undertakings with timers and triumphs."
        case .fizzleGoblin:
            return "Chaotic antics from the realm of the Goblin."
        }
    }
}
