import SwiftUI
import ReSwift

struct CounterView: View {
    @ObservedObject private var state = ObservableState(store: mainStore)

    var body: some View {
        VStack(spacing: 20) {

            View1()
            View2()
            
            HStack(spacing: 40) {
                Button(action: {
                    state.dispatch(CounterActionDecrease())
                }) {
                    Text("-")
                        .font(.largeTitle)
                        .padding()
                        .background(Color.red.opacity(0.2))
                        .clipShape(Circle())
                }

                Button(action: {
                    state.dispatch(CounterActionIncrease())
                }) {
                    Text("+")
                        .font(.largeTitle)
                        .padding()
                        .background(Color.green.opacity(0.2))
                        .clipShape(Circle())
                }
            }
        }
        .padding()
    }
}


#Preview {
    CounterView()
}
