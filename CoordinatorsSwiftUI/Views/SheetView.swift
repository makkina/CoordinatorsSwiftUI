import SwiftUI

struct SheetView: View {
    @EnvironmentObject var coordinator: RootCoordinator
    @StateObject var childCoordinator = RootCoordinator()
    
    var body: some View {
        VStack {
            SheetCoordinator()
                .environmentObject(childCoordinator)
                .onChange(of: childCoordinator.closeSheet) { _ in
                    coordinator.dissmissSheet()
                }
        }
    }
}

#Preview {
    NavigationStack {
        SheetView().environmentObject(RootCoordinator())
    }
}
