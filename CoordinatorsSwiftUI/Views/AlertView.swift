import SwiftUI

struct AlertView: View {
    @EnvironmentObject var coordinator: ApplicationCoordinator
    @StateObject var childCoordinator = ApplicationCoordinator()
    
    var body: some View {
        VStack {
            alertViewCoordinatorView()
                .background(.red)
                .environmentObject(childCoordinator)
                .onChange(of: childCoordinator.closeSheet) {
                    coordinator.dissmissSheet()
                }
        }
    }
}

#Preview {
    NavigationStack {
        AlertView().environmentObject(ApplicationCoordinator())
    }
}
