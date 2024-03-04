import SwiftUI

struct SheetView: View {
    @EnvironmentObject var coordinator: ApplicationCoordinator
    @StateObject var childCoordinator = ApplicationCoordinator()
    
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
        SheetView().environmentObject(ApplicationCoordinator())
    }
}
