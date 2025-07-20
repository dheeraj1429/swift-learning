import SwiftUI

struct GuestTabView: View {
    var body: some View {
        TabView {
            Text("Welcome")
                .tabItem {
                    Label("Welcome", systemImage: "hand.wave.fill")
                }

            Text("Login")
                .tabItem {
                    Label("Login", systemImage: "person.crop.circle.fill.badge.plus")
                }

            Text("Help")
                .tabItem {
                    Label("Help", systemImage: "questionmark.circle.fill")
                }
        }
    }
}


#Preview {
    GuestTabView()
}
