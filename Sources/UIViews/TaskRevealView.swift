import SwiftUI

struct TaskRevealView: View {
    let task: Task

    var body: some View {
        VStack(spacing: 20) {
            Text(task.title)
                .font(.title)
                .bold()
            Text(task.prompt)
                .multilineTextAlignment(.center)
            if let reward = task.reward {
                Text("Reward: \(reward)")
                    .italic()
                    .padding(.top, 10)
            }
            Spacer()
        }
        .padding()
        .animation(.easeInOut, value: task.id)
    }
}

struct TaskRevealView_Previews: PreviewProvider {
    static var previews: some View {
        TaskRevealView(task: Task(title: "Sample", prompt: "Do the thing", category: .cleaning, reward: "Cookie"))
    }
}
