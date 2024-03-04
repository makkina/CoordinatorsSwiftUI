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
    case popupViewHome
    case popupViewChildOne
    case popupViewChildTwo
}

enum Sheet: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case sheetView
}

enum FullScreenCover: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case fullScreenView
}

final class RootCoordinator: Coordinator {
    
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
        case .popupViewHome: PopupViewHome()
        case .popupViewChildOne: PopupViewChildOne()
        case .popupViewChildTwo: PopupViewChildTwo()
        }
    }
    
    @ViewBuilder
    func build(sheet: Sheet) -> some View {
        switch sheet {
        case .sheetView: SheetView()
        }
    }
    
/**
    @ViewBuilder
    func buildSheetView(index: NavigationPage) -> some View {
        SheetView(index: index)
    }
 */
    
    @ViewBuilder
    func build(fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .fullScreenView: FullScreenView()
        }
    }
    
/**
    @ViewBuilder
    func buildFullScreenView(index: NavigationPage) -> some View {
        FullScreenView(index: index)
    }
 */
}
