import SwiftUI

struct ContentView: View {
    @ObservedObject var counterState = ObservableState(store: counterStore)
    @ObservedObject var userState = ObservableState(store: userStore)
    let contentService = ContentService()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world! from counter state \(counterState.current.counter)")
            Text("Hello, wworld! from user state \(userState.current.isLoggedIn)")
            Button {
                contentService.update()
            }label: {
                Text("Update counter")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
