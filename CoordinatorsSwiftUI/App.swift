import SwiftUI

@main
struct ProjectNavigatorApp: App {
    var body: some Scene {
        WindowGroup {
            TabbarView()
        }
    }
}

/**
 @NEXT:
 
 1.  `` Use Coordinators to `close fullScreenCover`
 2.  Use Coordinators to `show` Views (~ push full view without animation)
 3.  Single Hashable Type to manage NavigationPages / Routes
        3.1. Page
        3.2. SheetType
        3.3. FullScreenCoverType
 4. Make injectable `$index` variable to reuse the popUpViews(!) e.g. coordinator.present(sheet: .alertView(index: .profileView))
        `` 4.1 Rename alertView to .sheetViewCoordinator
        `` 4.2 Rename warningView to fullScreenCoverCoordinatorWrapperView() / / .sheetCoordinatorWrapperView / .fullScreenCoverViewCoordinator
 */
