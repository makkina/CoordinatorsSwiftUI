import SwiftUI

struct SheetView: View {
    @EnvironmentObject var parentCoordinator: Coordinator
    @StateObject var coordinator = Coordinator()
    
    var body: some View {
        VStack {
            SheetCoordinator()
                .environmentObject(coordinator)
                .onChange(of: coordinator.closeSheet) { _ in
                    parentCoordinator.dissmissSheet()
                }
        }
    }
}

#Preview {
    NavigationStack {
        SheetView().environmentObject(Coordinator())
    }
}
