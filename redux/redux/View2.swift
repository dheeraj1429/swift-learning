//
//  View2.swift
//  redux
//
//  Created by DHEERAJ on 27/07/25.
//

import SwiftUI

struct View2: View {
    @ObservedObject private var state = ObservableState(store: mainStore)

    
    var body: some View {
        Text("Counter view 2: \(state.current.counter)")
            .font(.largeTitle)
    }
}

#Preview {
    View2()
}
