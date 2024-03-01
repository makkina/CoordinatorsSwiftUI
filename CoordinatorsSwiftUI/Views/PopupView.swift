import SwiftUI

struct PopupView: View {
    @EnvironmentObject var coordinator: ApplicationCoordinator
    
    var body: some View {
        VStack {
            Text("PopupView: Hello, World!")
            Button {
                coordinator.dissmissSheet()
            } label: {
                Text("Dismiss Sheet")
            }
        }
    }
}

#Preview {
    NavigationStack {
        PopupView().environmentObject(ApplicationCoordinator())
    }
}
