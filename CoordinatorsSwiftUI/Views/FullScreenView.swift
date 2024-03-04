import SwiftUI

struct FullScreenView: View {
    @EnvironmentObject var coordinator: RootCoordinator
    @StateObject var childCoordinator = RootCoordinator()
    
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
        FullScreenView().environmentObject(RootCoordinator())
    }
}
