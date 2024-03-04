import SwiftUI

struct alertViewCoordinatorView: View {
    @EnvironmentObject var childCoordinator: ApplicationCoordinator
    
    var body: some View {
        NavigationStack(path: $childCoordinator.path) {
            childCoordinator.build(page: .alertViewHome)
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
    alertViewCoordinatorView().environmentObject(ApplicationCoordinator())
}
