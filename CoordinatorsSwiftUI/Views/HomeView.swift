import SwiftUI

struct HomeView: View {
    @EnvironmentObject var coordinator: ApplicationCoordinator
    
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            Image(systemName: "house")
                .resizable()
                .frame(width: 60, height: 50)
            Text("Home")
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
        }
        .navigationTitle("Home")
    }
}

#Preview {
    NavigationStack {
        HomeView().environmentObject(ApplicationCoordinator())
    }
}
