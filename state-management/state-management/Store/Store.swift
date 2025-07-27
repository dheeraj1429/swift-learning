import ReSwift
import SwiftUI

class ObservableState<T>: ObservableObject, StoreSubscriber {
    @Published var current: T
    
    private var store: Store<T>
    
    init(store: Store<T>) {
        self.store = store
        self.current = store.state
        store.subscribe(self)
    }
    
    func newState(state: T) {
        DispatchQueue.main.async {
            self.current = state
        }
    }
    
    func dispatch(_ action: Action) {
        store.dispatch(action)
    }
    
    deinit {
        store.unsubscribe(self)
    }
}
