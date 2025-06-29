import SwiftUI

struct ProfileSelectionView: View {
    let profiles: [UserProfile]
    var onSelect: (UserProfile) -> Void

    var body: some View {
        NavigationStack {
            List(profiles) { profile in
                Button(action: { onSelect(profile) }) {
                    HStack {
                        Image(systemName: profile.avatarSystemImage)
                        Text(profile.name)
                    }
                }
            }
            .navigationTitle("Choose Your Hero")
        }
    }
}

struct ProfileSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSelectionView(profiles: [UserProfile(name: "Alex", avatarSystemImage: "person")]) { _ in }
    }
}
