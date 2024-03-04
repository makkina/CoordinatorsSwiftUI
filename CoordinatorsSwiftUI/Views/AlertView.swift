import SwiftUI

struct AlertView: View {
    @EnvironmentObject var coordinator: ApplicationCoordinator
    @StateObject var childCoordinator = ApplicationCoordinator()
    
    var body: some View {
        VStack {
            alertViewCoordinatorView()
                .environmentObject(childCoordinator)
                .onChange(of: childCoordinator.closeSheet) { _ in
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
