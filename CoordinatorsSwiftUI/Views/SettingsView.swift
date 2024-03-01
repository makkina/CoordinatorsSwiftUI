import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var coordinator: ApplicationCoordinator
    
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            Image(systemName: "gear")
                .resizable()
                .frame(width: 50, height: 50)
            Text("Settings")
            Button {
                coordinator.push(page: .childViewOne)
            } label: {
                Text("Navigate to Child View One")
            }
            
            Spacer()
            
            Button {
                coordinator.present(sheet: .alertView)
            } label: {
                Text("Present to Alert View")
            }
            
            Button {
                coordinator.present(fullScreenCover: .warningView)
            } label: {
                Text("Present to Warning View")
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    NavigationStack {
        SettingsView().environmentObject(ApplicationCoordinator())
    }
}
