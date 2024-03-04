import SwiftUI

struct PopupViewChildOne: View {
    @EnvironmentObject var childCoordinator: ApplicationCoordinator
    
    var body: some View {
        VStack(spacing: 25) {
            Image(systemName: "m1.button.horizontal.fill").font(.largeTitle)
            
            /// @action: Close Modal
            Button { childCoordinator.closeSheet?.toggle() } label: {
                (Text("Close Entire modal &nbsp;") + Text(Image(systemName: "xmark.circle.fill")))
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
            .navigationTitle("Alert View Child One")
        }
    }
}

#Preview {
    NavigationStack {
        PopupViewChildOne().environmentObject(ApplicationCoordinator())
    }
}
