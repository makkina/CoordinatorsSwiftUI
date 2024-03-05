import SwiftUI

struct FullScreenView: View {
    @EnvironmentObject var parentCoordinator: Coordinator
    @StateObject var coordinator = Coordinator()
    
    var body: some View {
        VStack {
            FullScreenCoordinator()
                .environmentObject(coordinator)
                .onChange(of: coordinator.closeFullScreenCover) { _ in
                    parentCoordinator.dissmissFullscreenCover()
                }
        }
    }
}

#Preview {
    NavigationStack {
        FullScreenView().environmentObject(Coordinator())
    }
}
