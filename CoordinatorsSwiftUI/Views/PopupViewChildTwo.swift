import SwiftUI

struct PopupViewChildTwo: View {
    @EnvironmentObject var childCoordinator: Coordinator

    var body: some View {
        VStack(spacing: 25) {
            Image(systemName: "m2.button.horizontal.fill").font(.largeTitle)
            
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
                .padding(.leading, -100)
            }
        }
        .navigationTitle("Popup View Child Two")
    }
}

#Preview {
    NavigationStack {
        PopupViewChildOne().environmentObject(Coordinator())
    }
}
