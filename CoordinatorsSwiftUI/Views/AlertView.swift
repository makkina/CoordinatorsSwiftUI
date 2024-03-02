import SwiftUI

struct AlertView: View {
    @EnvironmentObject var coordinator: ApplicationCoordinator
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("PopupView: Hello, World!")
                Button {
                    coordinator.dissmissSheet()
                } label: {
                    Text("Dismiss Sheet")
                }
                
                Button {
                    coordinator.push(page: .childViewOne)
                } label: {
                    Text("Try(?) push to ChildView One, Inside (AlertView 'Sheet' Context")
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        AlertView().environmentObject(ApplicationCoordinator())
    }
}
