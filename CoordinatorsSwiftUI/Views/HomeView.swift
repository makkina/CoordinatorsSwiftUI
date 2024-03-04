import SwiftUI

struct HomeView: View {
    @EnvironmentObject var coordinator: RootCoordinator
    
    var body: some View {
        VStack(spacing: 10) {
            /// BODY
            Spacer()
            Image(systemName: "house")
                .resizable()
                .frame(width: 60, height: 50)
            Text("Home")
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
        .navigationTitle("Home")
        .toolbar {
            Button("ToolbarButton") {
                print("Hello Home")
            }
        }
    }
}

#Preview {
    NavigationStack {
        HomeView().environmentObject(RootCoordinator())
    }
}
