import SwiftUI

struct ChildViewOne: View {
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "1.circle.fill")
                .resizable()
                .frame(width: 50, height: 50) 
            Text("Welcome to Child View 1!")
            
            /// CALL TO ACTIONS
            Button { coordinator.push(page: .childViewTwo) } label: {
                Text("Navigate to Child View 2")
            }
            Button { coordinator.pop() } label: {
                Text("Pop")
            }
            Button { coordinator.popToRoot() } label: {
                Text("Pop To Root")
            }
        }
        .toolbar {
            Button("ToolbarButton") {
                print("Hello ChildViewOne")
            }
        }
        .navigationTitle("Child View One")
    }
}

#Preview {
    NavigationStack {
        ChildViewOne().environmentObject(Coordinator())
    }
}
