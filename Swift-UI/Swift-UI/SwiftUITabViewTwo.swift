import SwiftUI

struct SwiftUITabViewTwo: View {
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab, content: {
            Text("Tab 1")
                .tabItem {
                    Image(systemName: "plus")
                    Text("Tab 1")
                }
                .tag(0)
            
            Text("Tab 2")
                .tabItem {
                    Image(systemName: "plus")
                    Text("Tab 2")
                }
                .tag(1)
            
            Text("Tab 3")
                .tabItem {
                    Image(systemName: "plus")
                    Text("Tab 3")
                }
                .tag(2)
            
            Text("Tab 4")
                .tabItem {
                    Image(systemName: "plus")
                    Text("Tab 4")
                }
                .tag(3)
        })
    }
}

#Preview {
    SwiftUITabViewTwo()
}
