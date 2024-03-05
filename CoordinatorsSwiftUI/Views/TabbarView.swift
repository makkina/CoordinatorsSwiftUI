import SwiftUI

enum Tab {
    case tab1
    case tab2
    case tab3
}

struct TabbarView: View {
    @State private var selectedTab: Tab = .tab1
    @EnvironmentObject var rootCoordinator: RootCoordinator
    
    var body: some View {
        VStack {
            TabView(selection: tabSelection()) {
                Tab1Coordinator()
                    .environmentObject(rootCoordinator.tab1Coordinator)
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    .tag(Tab.tab1)
                
                Tab2Coordinator()
                    .environmentObject(rootCoordinator.tab2Coordinator)
                    .tabItem {
                        Label("Apple TV", systemImage: "homepod.and.appletv")
                    }
                    .tag(Tab.tab2)
                
                Tab3Coordinator()
                    .environmentObject(rootCoordinator.tab3Coordinator)
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
                if !rootCoordinator.tab1Coordinator.path.isEmpty {
                    rootCoordinator.tab1Coordinator.popToRoot()
                }
            }
            /// TAB #2
            else if tappedTab == self.selectedTab && self.selectedTab == .tab2 {
                if !rootCoordinator.tab2Coordinator.path.isEmpty {
                    rootCoordinator.tab2Coordinator.popToRoot()
                }
            }
            /// TAB #3
            else if tappedTab == self.selectedTab && self.selectedTab == .tab3 {
                if !rootCoordinator.tab3Coordinator.path.isEmpty {
                    rootCoordinator.tab3Coordinator.popToRoot()
                }
            }
            
            self.selectedTab = tappedTab
        }
    }
}

#Preview {
    TabbarView()
}
