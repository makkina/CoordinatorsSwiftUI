import Foundation
import SwiftUI

enum NavigationPage: String, CaseIterable, Identifiable, Hashable {
    var id: String { self.rawValue }
    
    case homeViewOne
    case homeViewTwo
    case homeViewThree
    case childViewOne
    case childViewTwo
    case childViewThree
    case alertViewHome
    case alertViewChildOne
    case alertViewChildTwo
}

enum Sheet: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case alertView
}

enum FullScreenCover: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case warningView
}

final class ApplicationCoordinator: Coordinator {
    
    @ViewBuilder
    func build(page: NavigationPage) -> some View {
        switch page {
        case .homeViewOne: HomeView()
        case .homeViewTwo: PodsView()
        case .homeViewThree: SettingsView()
        case .childViewOne: ChildViewOne()
        case .childViewTwo: ChildViewTwo()
        case .childViewThree: ChildViewThree()
        
        ///@Sheet: When in popup mode
        case .alertViewHome: AlertViewHome()
        case .alertViewChildOne: AlertViewChildOne()
        case .alertViewChildTwo: AlertViewChildTwo()
        }
    }
    
    @ViewBuilder
    func build(sheet: Sheet) -> some View {
        switch sheet {
        case .alertView: AlertView()
        }
    }
    
    @ViewBuilder
    func build(fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .warningView: WarningView()
        }
    }
}
