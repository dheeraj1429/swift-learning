import SwiftUI
import Foundation

struct BackgroundView: View {
    var isDay: Bool
    
    var body: some View {
//        LinearGradient(
//            gradient: Gradient(colors: [isDay ? .blue : .black, .gray]),
//            startPoint: .topLeading,
//            endPoint: .bottomTrailing)
        ContainerRelativeShape()
            .fill(isDay ? Color.blue.gradient : Color.black.gradient)
            .ignoresSafeArea()
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    BackgroundView(isDay: false)
}
