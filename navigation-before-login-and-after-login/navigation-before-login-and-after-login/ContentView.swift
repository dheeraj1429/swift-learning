import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var loginManger: LoginManager
    
    var body: some View {
        VStack {
                    Button(action: {
                        loginManger.isLoggedIn.toggle()
                    }) {
                        Text(loginManger.isLoggedIn ? "Log Out" : "Log In")
                            .padding()
                            .background(.blue)
                            .foregroundStyle(.white)
                            .cornerRadius(8)
                    }

            if loginManger.isLoggedIn {
                        LoggedInTabView()
                    } else {
                        GuestTabView()
                    }
                }
    }
}

#Preview {
    ContentView()
        .environmentObject(LoginManager())
}
