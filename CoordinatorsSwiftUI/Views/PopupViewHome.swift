import SwiftUI

struct PopupViewHome: View {
    @EnvironmentObject var childCoordinator: ApplicationCoordinator
    
    var body: some View {
        ZStack {
            // Color.blue.ignoresSafeArea()
            VStack(spacing: 25) {
                Image(systemName: "m.square.fill").font(.largeTitle)
                
                /// @action: Close Modal
                Button { childCoordinator.closeSheet?.toggle() } label: {
                    (Text("Close Sheet (Sheet Context) &nbsp;") + Text(Image(systemName: "xmark.circle.fill")))
                }

                /// @action: Close Modal
                Button { childCoordinator.closeFullScreenCover?.toggle() } label: {
                    (Text("Close Full Screen (Full Screen Context) &nbsp;") + Text(Image(systemName: "xmark.circle.fill")))
                }
                
                Divider()
                
                /// @action: Close Both: closeSheet & closeFullScreenCover
                Button {
                    childCoordinator.closeSheet?.toggle()
                    childCoordinator.closeFullScreenCover?.toggle()
                } label: {
                    (Text("Close Entire modal (Shared Context) &nbsp;") + Text(Image(systemName: "xmark.circle.fill")))
                }
                
                /// @action: Go To Next Screen
                Button { childCoordinator.push(page: .popupViewChildOne) } label: {
                    (Text("Navigate to Next Screen &nbsp;") + Text(Image(systemName: "arrow.forward")))
                }
            }
        }
        .navigationTitle("Popup View Home")
    }
}

#Preview {
    NavigationStack {
        PopupViewHome().environmentObject(ApplicationCoordinator())
    }
}
