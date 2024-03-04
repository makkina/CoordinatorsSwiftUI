import SwiftUI

struct PodsView: View {
    @EnvironmentObject var coordinator: ApplicationCoordinator
    
    var body: some View {
        VStack(spacing: 10) {
            /// BODY
            Spacer()
            Image(systemName: "homepod.and.appletv")
                .resizable()
                .frame(width: 50, height: 50)
            Text("Pods")
            Button { coordinator.push(page: .childViewOne) } label: {
                Text("Navigate to Child View One")
            }
            
            /// FOOTER
            Spacer()
            Button { coordinator.present(sheet: .alertView) } label: {
                Text("Present to Alert View")
            }
            Button { coordinator.present(fullScreenCover: .warningView) } label: {
                Text("Present to Warning View")
            }
        }
        .navigationTitle("Pods")
    }
}

#Preview {
    NavigationStack {
        PodsView().environmentObject(ApplicationCoordinator())
    }
}
