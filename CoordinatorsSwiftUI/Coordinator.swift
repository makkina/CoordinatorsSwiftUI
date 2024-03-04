import Foundation
import SwiftUI

protocol CoordinatorProtocol {
    var path: NavigationPath { get }
    var sheet: Sheet? { get }
    var fullScreenCover: FullScreenCover? { get }
    var closeSheet: Bool? { get }
    
    func push(page: NavigationPage)
    func present(sheet: Sheet)
    func pop()
    func popToRoot()
    func dissmissSheet()
    func dissmissFullscreenCover()
}

class Coordinator: CoordinatorProtocol, ObservableObject {
    @Published var path = NavigationPath()
    @Published var sheet: Sheet?
    @Published var fullScreenCover: FullScreenCover?
    @Published var closeSheet: Bool? = false
    
    func push(page: NavigationPage) {
        self.path.append(page)
    }

    func present(sheet: Sheet) {
        self.sheet = sheet
    }
    
    func present(fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    func pop() {
        self.path.removeLast()
    }
    
    func popToRoot() {
        self.path.removeLast(path.count)
    }

    func dissmissSheet() {
        self.sheet = nil
    }
    
    func dissmissFullscreenCover() {
        self.fullScreenCover = nil
    }
}
