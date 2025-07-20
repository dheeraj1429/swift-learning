import SwiftUI

@main
struct navigation_before_login_and_after_loginApp: App {
    @StateObject private var loginManager: LoginManager = LoginManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(loginManager)
        }
    }
}
