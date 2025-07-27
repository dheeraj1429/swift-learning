import SwiftUI

struct View1: View {
    @ObservedObject private var state = ObservableState(store: mainStore)

    
    var body: some View {
        Text("Counter view 1: \(state.current.counter)")
            .font(.largeTitle)
    }
}

#Preview {
    View1()
}
