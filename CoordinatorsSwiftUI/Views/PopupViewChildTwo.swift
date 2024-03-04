import SwiftUI

struct PopupViewChildTwo: View {
    @EnvironmentObject var childCoordinator: ApplicationCoordinator

    var body: some View {
        VStack(spacing: 25) {
            Image(systemName: "m2.button.horizontal.fill").font(.largeTitle)
            
            /// @action: Close Modal
            Button { childCoordinator.closeSheet?.toggle() } label: {
                (Text("Close Entire modal &nbsp;") + Text(Image(systemName: "xmark.circle.fill")))
            }

            HStack(spacing: 50) {
                /// @action: Go Back
                Button { childCoordinator.pop() } label: {
                    (Text(Image(systemName: "arrow.backward")) + Text("&nbsp; Back"))
                }
                .padding(.leading, -100)
            }
        }
        .navigationTitle("Alert View Child Two")
    }
}

#Preview {
    NavigationStack {
        PopupViewChildOne().environmentObject(ApplicationCoordinator())
    }
}
