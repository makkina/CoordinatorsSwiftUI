import SwiftUI

struct FullScreenCoordinator: View {
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.build(page: .popupViewHome)
                .sheet(item: $coordinator.sheet) {
                    coordinator.build(sheet: $0)
                }
                .navigationDestination(for: NavigationPage.self) {
                    coordinator.build(page: $0)
                }
                .fullScreenCover(item: $coordinator.fullScreenCover) {
                    coordinator.build(fullScreenCover: $0)
                }
                .onOpenURL {
                    print("Some code for handling url \($0.absoluteString)")
                }
        }
    }
}

#Preview {
    FullScreenCoordinator().environmentObject(Coordinator())
}
