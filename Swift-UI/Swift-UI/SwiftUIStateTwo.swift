import SwiftUI

//struct SwiftUIStateTwo: View {
//    @State var counter: Int = 0
//    
//    var body: some View {
//        SwiftUIStateTwoChildFirst(couter: counter, counterState: $counter)
//    }
//}
//
//struct SwiftUIStateTwoChildFirst: View {
//    var couter: Int
//    @Binding var counterState: Int
//    
//    var body: some View {
//        Text("Hello, World From First Child View \(couter)")
//        SwiftUIStateTwoChildSecond(coutner: $counterState)
//    }
//}
//
//struct SwiftUIStateTwoChildSecond: View {
//    @Binding var coutner: Int
//    
//    var body: some View {
//        Button {
//            coutner += 1
//        } label: {
//            Text("Update counter")
//        }
//        .buttonStyle(.bordered)
//    }
//}
//
//#Preview {
//    SwiftUIStateTwo()
//}

// ---------

//Shared global counter view model
//class CounterViewModel: ObservableObject {
//    @Published var counter: Int = 0
//}
//
//// Root View
//struct SwiftUIStateTwo: View {
//    @StateObject private var counterViewModel = CounterViewModel()
//    
//    var body: some View {
//        SwiftUIStateTwoChildFirst(counterViewModel: counterViewModel)
//    }
//}
//
//// First child — reads the value
//struct SwiftUIStateTwoChildFirst: View {
//    @ObservedObject var counterViewModel: CounterViewModel
//    
//    var body: some View {
//        VStack {
//            Text("Hello, World From First Child View \(counterViewModel.counter)")
//            SwiftUIStateTwoChildSecond(counterViewModel: counterViewModel)
//        }
//    }
//}
//
//// Second child — updates the value
//struct SwiftUIStateTwoChildSecond: View {
//    @ObservedObject var counterViewModel: CounterViewModel
//    
//    var body: some View {
//        Button {
//            counterViewModel.counter += 1
//        } label: {
//            Text("Update counter")
//        }
//        .buttonStyle(.bordered)
//    }
//}

// ----------
// Shared global counter view model
class CounterViewModel: ObservableObject {
    @Published var counter: Int = 0
}

// Root View
struct SwiftUIStateTwo: View {
    @StateObject private var counterViewModel = CounterViewModel()
    
    var body: some View {
        SwiftUIStateTwoChildFirst()
            .environmentObject(counterViewModel)
    }
}

// First child — reads the value
struct SwiftUIStateTwoChildFirst: View {
    @EnvironmentObject var counterViewModel: CounterViewModel
    
    
    var body: some View {
        VStack {
            Text("Hello, World From First Child View \(counterViewModel.counter)")
            SwiftUIStateTwoChildSecond()
            SwiftUIStateTwoChildThird()
        }
    }
}

// Second child — updates the value
struct SwiftUIStateTwoChildSecond: View {
    @EnvironmentObject var counterViewModel: CounterViewModel
    
    var body: some View {
        Button {
            counterViewModel.counter += 10
        } label: {
            Text("Inc counter")
        }
        .buttonStyle(.bordered)
    }
}

// Third child - updates tha value
struct SwiftUIStateTwoChildThird: View {
    @EnvironmentObject var counterViewModel: CounterViewModel
    
    var body: some View {
        Button {
            counterViewModel.counter -= 10
        } label: {
            Text("Dec counter")
        }
        .buttonStyle(.bordered)
    }
}

#Preview {
    SwiftUIStateTwo()
}
