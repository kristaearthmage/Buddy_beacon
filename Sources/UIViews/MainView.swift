import SwiftUI

struct MainView: View {
    var summonAction: () -> Void
    var showProfiles: () -> Void
    var showModes: () -> Void

    var body: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("Buddy Beacon")
                .font(.largeTitle)
                .bold()
            Button(action: summonAction) {
                Text("Summon Task")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
            }
            .padding(.horizontal)
            Spacer()
            HStack {
                Button("Profiles", action: showProfiles)
                Spacer()
                Button("Modes", action: showModes)
            }
            .padding(.horizontal)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(summonAction: {}, showProfiles: {}, showModes: {})
    }
}
