import Foundation

/// The Guardian voice shaping all narrative.
struct Lorekeeper {
    static func narrate(_ text: String) -> String {
        "\u{2728} " + text + " \u{2728}"
    }
}
