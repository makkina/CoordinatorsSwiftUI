import SwiftUI

enum Tab {
    case tab1
    case tab2
    case tab3
}

struct TabbarView: View {
    @State private var selectedTab: Tab = .tab1
    @StateObject var tab1Coordinator = ApplicationCoordinator()
    @StateObject var tab2Coordinator = ApplicationCoordinator()
    @StateObject var tab3Coordinator = ApplicationCoordinator()
    
    var body: some View {
        VStack {
            TabView(selection: tabSelection()) {
                tab1CoordinatorView()
                    .environmentObject(tab1Coordinator)
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    .tag(Tab.tab1)
                
                tab2CoordinatorView()
                    .environmentObject(tab2Coordinator)
                    .tabItem {
                        Label("Apple TV", systemImage: "homepod.and.appletv")
                    }
                    .tag(Tab.tab2)
                
                tab3CoordinatorView()
                    .environmentObject(tab3Coordinator)
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
                    .tag(Tab.tab3)
            }
        }
    }
}

private extension TabbarView {
    func tabSelection() -> Binding<Tab> {
        Binding {
            self.selectedTab
        } set: { tappedTab in
            
            /// TAB #1
            if (tappedTab == self.selectedTab) && (self.selectedTab == .tab1) {
                if !tab1Coordinator.path.isEmpty {
                    tab1Coordinator.popToRoot()
                }
            }
            /// TAB #2
            else if tappedTab == self.selectedTab && self.selectedTab == .tab2 {
                if !tab2Coordinator.path.isEmpty {
                    tab2Coordinator.popToRoot()
                }
            }
            /// TAB #3
            else if tappedTab == self.selectedTab && self.selectedTab == .tab3 {
                if !tab3Coordinator.path.isEmpty {
                    tab3Coordinator.popToRoot()
                }
            }
            
            self.selectedTab = tappedTab
        }
    }
}

#Preview {
    TabbarView()
}
