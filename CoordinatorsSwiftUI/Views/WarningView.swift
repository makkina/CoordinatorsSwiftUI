import SwiftUI

struct WarningView: View {
    @EnvironmentObject var coordinator: ApplicationCoordinator
    
    var body: some View {
        NavigationStack {
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
}

#Preview {
    NavigationStack {
        WarningView().environmentObject(ApplicationCoordinator())
    }
}
