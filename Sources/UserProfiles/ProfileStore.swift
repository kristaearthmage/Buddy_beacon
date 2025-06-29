import Foundation

/// Temporary in-memory store for profiles until secure storage arrives.
final class ProfileStore: ObservableObject {
    @Published var profiles: [UserProfile] = [
        UserProfile(name: "Alex", avatarSystemImage: "person.circle"),
        UserProfile(name: "Sam", avatarSystemImage: "bolt.heart"),
        UserProfile(name: "Riley", avatarSystemImage: "leaf")
    ]
}
