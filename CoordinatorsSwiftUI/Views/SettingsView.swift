import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var coordinator: ApplicationCoordinator
    
    var body: some View {
        VStack(spacing: 10) {
            /// BODY
            Spacer()
            Image(systemName: "gear")
                .resizable()
                .frame(width: 50, height: 50)
            Text("Settings")
            Button { coordinator.push(page: .childViewOne) } label: {
                Text("Navigate to Child View One")
            }
            
            /// FOOTER
            Spacer()
            Button { coordinator.present(sheet: .sheetView) } label: {
                Text("Present to Sheet View")
            }
            Button { coordinator.present(fullScreenCover: .fullScreenView) } label: {
                Text("Present to FullScreen View")
            } 
        }
        .navigationTitle("Settings")
    }
}

#Preview {
    NavigationStack {
        SettingsView().environmentObject(ApplicationCoordinator())
    }
}
