import Foundation

/// Injects a spark of absurdity into everyday rituals.
final class FizzleGoblinEngine {
    func randomChaosTask() -> Task {
        let chaosTasks = [
            Task(title: "Goblin Stretch", prompt: "Wiggle every limb and grin at the nearest appliance.", category: .chaos, reward: "A ripple of laughter"),
            Task(title: "Whisper to Water", prompt: "Sing a two-line ballad to your water glass.", category: .chaos, reward: nil)
        ]
        return chaosTasks.randomElement()!
    }
}
