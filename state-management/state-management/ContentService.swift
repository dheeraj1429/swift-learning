import SwiftUI
import ReSwift

class ContentService {
    @ObservedObject var counterState = ObservableState(store: counterStore)
    @ObservedObject var userState = ObservableState(store: userStore)
    
    func update() {
        counterState.dispatch(CounterActionIncrease(value: 100))
        userState.dispatch(UserLoggedInAction(value: true))
    }
}
