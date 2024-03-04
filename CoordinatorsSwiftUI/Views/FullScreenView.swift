import SwiftUI

struct FullScreenView: View {
    @EnvironmentObject var coordinator: ApplicationCoordinator
    @StateObject var childCoordinator = ApplicationCoordinator()
    
    var body: some View {
        VStack {
            FullScreenCoordinator()
                .environmentObject(childCoordinator)
                .onChange(of: childCoordinator.closeFullScreenCover) { _ in
                    coordinator.dissmissFullscreenCover()
                }
        }
    }
}

#Preview {
    NavigationStack {
        FullScreenView().environmentObject(ApplicationCoordinator())
    }
}
