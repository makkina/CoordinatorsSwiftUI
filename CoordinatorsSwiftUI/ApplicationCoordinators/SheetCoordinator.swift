import SwiftUI

struct SheetCoordinator: View {
    @EnvironmentObject var childCoordinator: RootCoordinator
    
    var body: some View {
        NavigationStack(path: $childCoordinator.path) {
            childCoordinator.build(page: .popupViewHome)
                .sheet(item: $childCoordinator.sheet) {
                    childCoordinator.build(sheet: $0)
                }
                .navigationDestination(for: NavigationPage.self) {
                    childCoordinator.build(page: $0)
                }
                .fullScreenCover(item: $childCoordinator.fullScreenCover) {
                    childCoordinator.build(fullScreenCover: $0)
                }
                .onOpenURL {
                    print("Some code for handling url \($0.absoluteString)")
                }
        }
    }
}

#Preview {
    SheetCoordinator().environmentObject(RootCoordinator())
}
