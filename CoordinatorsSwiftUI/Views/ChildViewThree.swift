import SwiftUI

struct ChildViewThree: View {
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "3.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
            Text("Welcome to Child View 3 (end of the road)!")
            
            /// CALL TO ACTIONS
            Button { coordinator.pop() } label: {
                Text("Pop")
            }
            Button { coordinator.popToRoot() } label: {
                Text("Pop To Root")
            }
        }
        .navigationTitle("Child View Three")
    }
}

#Preview {
    NavigationStack {
        ChildViewThree().environmentObject(Coordinator())
    }
}
