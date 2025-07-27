import SwiftUI
import ReSwift


struct AppState: StateType {
    var counter: Int = 0
}

struct CounterActionIncrease: Action {}
struct CounterActionDecrease: Action {}

func counterReducer(action: Action, state: AppState?) -> AppState {
    var state = state ?? AppState()

    switch action {
    case _ as CounterActionIncrease:
        state.counter += 1
    case _ as CounterActionDecrease:
        state.counter -= 1
    default:
        break
    }

    return state
}

let mainStore = Store<AppState>(
    reducer: counterReducer,
    state: nil
)

public class ObservableState<T>: ObservableObject where T: StateType {

    // MARK: Public properties
    
    @Published public var current: T
    
    // MARK: Private properties
    
    private var store: Store<T>
    
    // MARK: Lifecycle
    
    public init(store: Store<T>) {
        self.store = store
        self.current = store.state
        store.subscribe(self)
    }
    
    deinit {
        store.unsubscribe(self)
    }
    
    // MARK: Public methods
    
    public func dispatch(_ action: Action) {
        store.dispatch(action)
    }
    
    public func dispatch(_ action: Action) -> () -> Void {
        {
            self.store.dispatch(action)
        }
    }
}

extension ObservableState: StoreSubscriber {
    
    // MARK: - <StoreSubscriber>
    
    public func newState(state: T) {
        DispatchQueue.main.async {
            self.current = state
        }
    }
}
