import ReSwift

struct CounterState {
    var counter: Int = 0
}

struct CounterActionIncrease: Action {
    let value: Int
}

func counterReducer(action: Action, state: CounterState?) -> CounterState {
    var state = state ?? CounterState()

    switch action {
    case let action as CounterActionIncrease:
        state.counter += action.value
    default:
        break
    }

    return state
}

let counterStore = Store<CounterState>(reducer: counterReducer, state: nil)
