import SwiftUI

struct PodsView: View {
    @EnvironmentObject var coordinator: Coordinator
    
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
            Button { coordinator.present(sheet: .sheetView) } label: {
                Text("Present to Sheet View")
            }
            Button { coordinator.present(fullScreenCover: .fullScreenView) } label: {
                Text("Present to FullScreen View")
            }
        }
        .navigationTitle("Pods")
    }
}

#Preview {
    NavigationStack {
        PodsView().environmentObject(Coordinator())
    }
}
