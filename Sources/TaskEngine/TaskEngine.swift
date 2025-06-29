import Foundation

/// Conjures tasks using Gemma 3n (placeholder) and CoreML mood.
final class TaskEngine {
    /// Generates a whimsical task for the chosen mode.
    func generateTask(for mode: GameMode) -> Task {
        // Placeholder pool until Gemma 3n integration.
        let tasks = [
            Task(title: "Dust Dance", prompt: "Twirl with a feather duster and clear the cobwebs.", category: .cleaning, reward: "A shimmering high-five"),
            Task(title: "Mirror Pep Talk", prompt: "Recite three compliments to yourself in the mirror.", category: .selfCare, reward: nil),
            Task(title: "Sock Oracle", prompt: "Arrange three socks and whisper a secret to the cat.", category: .chaos, reward: "Goblin giggles")
        ]
        // Random selection for now
        return tasks.randomElement()!
    }
}
