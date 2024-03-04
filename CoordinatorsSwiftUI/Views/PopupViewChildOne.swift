import SwiftUI

struct PopupViewChildOne: View {
    @EnvironmentObject var childCoordinator: RootCoordinator
    
    var body: some View {
        VStack(spacing: 25) {
            Image(systemName: "m1.button.horizontal.fill").font(.largeTitle)
            
            /// @action: Close Modal
            Button {
                childCoordinator.closeSheet?.toggle()
                childCoordinator.closeFullScreenCover?.toggle()
            } label: {
                (Text("Close Entire modal (Shared Context) &nbsp;") + Text(Image(systemName: "xmark.circle.fill")))
            }
            
            HStack(spacing: 50) {
                /// @action: Go Back
                Button { childCoordinator.pop() } label: {
                    (Text(Image(systemName: "arrow.backward")) + Text("&nbsp; Back"))
                }
                /// @action: Go To Next Screen
                Button { childCoordinator.push(page: .popupViewChildTwo) } label: {
                    (Text("Next &nbsp;") + Text(Image(systemName: "arrow.forward")))
                }
            }
            .navigationTitle("Popup View Child One")
        }
    }
}

#Preview {
    NavigationStack {
        PopupViewChildOne().environmentObject(RootCoordinator())
    }
}
