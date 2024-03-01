import SwiftUI

struct WarningView: View {
    @EnvironmentObject var coordinator: ApplicationCoordinator
    
    var body: some View {
        VStack {
            Text("Warning View!")
            Button {
                coordinator.dissmissFullscreenCover()
            } label: {
                Text("Dismiss FullscreenCover")
            }
        }
    }
}

#Preview {
    NavigationStack {
        WarningView().environmentObject(ApplicationCoordinator())
    }
}
