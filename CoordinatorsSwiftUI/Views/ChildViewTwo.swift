import SwiftUI

struct ChildViewTwo: View {
    @EnvironmentObject var coordinator: ApplicationCoordinator
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "2.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
            Text("Welcome to Child View 2!")
            
            /// CALL TO ACTIONS
            Button { coordinator.push(page: .childViewThree) } label: {
                Text("Navigate to Child View 3")
            }
            Button { coordinator.pop() } label: {
                Text("Pop")
            }
            Button { coordinator.popToRoot() } label: {
                Text("Pop To Root")
            }
        }
        .navigationTitle("Child View Two")
    }
}

#Preview {
    NavigationStack {
        ChildViewTwo().environmentObject(ApplicationCoordinator())
    }
}
