import SwiftUI
import Foundation

class LoginManager: ObservableObject {
    @Published var isLoggedIn: Bool = false
    
    func login(login: Bool) {
        isLoggedIn = login
    }
}
