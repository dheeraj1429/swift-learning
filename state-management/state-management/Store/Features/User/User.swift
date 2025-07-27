import SwiftUI
import ReSwift

struct UserState {
    var isLoggedIn: Bool = false
}

struct UserLoggedInAction: Action {
    let value: Bool
}

func UserReducer(action: Action, state: UserState?) -> UserState {
    var state = state ?? UserState()
    
    switch action {
    case let action as UserLoggedInAction:
        state.isLoggedIn = action.value
    default:
        break
    }
    
    return state
}

let userStore = Store<UserState>(reducer: UserReducer, state: nil)
