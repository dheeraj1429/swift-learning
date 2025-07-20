import SwiftUI

struct SwiftUITabView: View {
    var body: some View {
        TabView {
            Tab("Received", systemImage: "tray.and.arrow.down.fill") {
                
            }
            
            Tab("Sent", systemImage: "tray.and.arrow.up.fill") {
                
            }
            
            Tab("Account", systemImage: "person.crop.circle.fill") {
                
            }
            .badge(1)
        }
    }
}

#Preview {
    SwiftUITabView()
}
