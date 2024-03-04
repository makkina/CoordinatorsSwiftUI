import SwiftUI

struct WarningView: View {
    @EnvironmentObject var coordinator: ApplicationCoordinator
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                Text("Warning View!")
                Button { coordinator.dissmissFullscreenCover() } label: {
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
