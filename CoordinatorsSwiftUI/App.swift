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
 @TODO:
 
 1.  Use Coordinators to `close fullScreenCover`
 2.  Use Coordinators to `show` Views (~ push full view without animation)
 */
