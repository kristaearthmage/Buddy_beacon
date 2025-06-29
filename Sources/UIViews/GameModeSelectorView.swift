import SwiftUI

struct GameModeSelectorView: View {
    @Binding var selectedMode: GameMode

    var body: some View {
        NavigationStack {
            List(GameMode.allCases) { mode in
                HStack {
                    Text(mode.rawValue)
                    Spacer()
                    if selectedMode == mode {
                        Image(systemName: "checkmark")
                    }
                }
                .contentShape(Rectangle())
                .onTapGesture { selectedMode = mode }
            }
            .navigationTitle("Game Mode")
        }
    }
}

struct GameModeSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        GameModeSelectorView(selectedMode: .constant(.quickShuffle))
    }
}
