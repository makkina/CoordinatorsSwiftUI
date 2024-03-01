import SwiftUI

struct ChildViewThree: View {
    @EnvironmentObject var coordinator: ApplicationCoordinator
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "3.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
            Text("Welcome to Child View 3 (end of the road)!")
            Button {
                coordinator.pop()
            } label: {
                Text("Pop")
            }
            
            Button {
                coordinator.popToRoot()
            } label: {
                Text("Pop To Root")
            }
        }
    }
}

#Preview {
    NavigationStack {
        ChildViewThree().environmentObject(ApplicationCoordinator())
    }
}
