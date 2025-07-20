import SwiftUI

struct LoggedInTabView: View {
    var body: some View {
        TabView {
            Text("Home View")
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }

            Text("Profile View")
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }

            Text("Settings View")
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
        }
    }
}


#Preview {
    LoggedInTabView()
}
