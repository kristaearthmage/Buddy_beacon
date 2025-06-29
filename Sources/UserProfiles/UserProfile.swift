import Foundation

/// Represents a household hero using Buddy Beacon.
struct UserProfile: Identifiable {
    let id = UUID()
    var name: String
    var avatarSystemImage: String
    var weighting: Int = 1
}
