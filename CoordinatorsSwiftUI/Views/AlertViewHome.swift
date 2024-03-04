import SwiftUI

struct AlertViewHome: View {
    @EnvironmentObject var childCoordinator: ApplicationCoordinator
    
    var body: some View {
        ZStack {
            // Color.blue.ignoresSafeArea()
            VStack(spacing: 25) {
                Image(systemName: "m.square.fill").font(.largeTitle)
                
                /// @action: Close Modal
                Button { childCoordinator.closeSheet?.toggle() } label: {
                    (Text("Close Entire modal &nbsp;") + Text(Image(systemName: "xmark.circle.fill")))
                }
                
                /// @action: Go To Next Screen
                Button { childCoordinator.push(page: .alertViewChildOne) } label: {
                    (Text("Navigate to Next Screen &nbsp;") + Text(Image(systemName: "arrow.forward")))
                }
            }
        }
        .navigationTitle("Alert View Home")
    }
}

#Preview {
    NavigationStack {
        AlertViewHome().environmentObject(ApplicationCoordinator())
    }
}
