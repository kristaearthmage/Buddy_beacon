import SwiftUI

struct RootView: View {
    @EnvironmentObject var appState: AppState
    @StateObject private var profileStore = ProfileStore()
    private let taskEngine = TaskEngine()
    private let goblinEngine = FizzleGoblinEngine()

    var body: some View {
        NavigationStack {
            MainView(
                summonAction: summonTask,
                showProfiles: { appState.showProfileSelection = true },
                showModes: { appState.showModeSelector = true }
            )
                .navigationDestination(isPresented: Binding(
                    get: { appState.revealedTask != nil },
                    set: { if !$0 { appState.revealedTask = nil } })
                ) {
                    if let task = appState.revealedTask {
                        TaskRevealView(task: task)
                    }
                }
                .sheet(isPresented: $appState.showProfileSelection) {
                    ProfileSelectionView(profiles: profileStore.profiles) { profile in
                        appState.currentProfile = profile
                    }
                }
                .sheet(isPresented: $appState.showModeSelector) {
                    GameModeSelectorView(selectedMode: $appState.currentMode)
                }
        }
    }

    private func summonTask() {
        switch appState.currentMode {
        case .fizzleGoblin:
            appState.revealedTask = goblinEngine.randomChaosTask()
        default:
            appState.revealedTask = taskEngine.generateTask(for: appState.currentMode)
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
            .environmentObject(AppState())
    }
}
