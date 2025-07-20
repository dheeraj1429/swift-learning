import SwiftUI

struct SwiftUIGradients: View {
    var body: some View {
        Rectangle()
//            .fill(Color.red)
//            .fill(LinearGradient(
//                colors: [.red, .blue],
//                startPoint: .leading,
//                endPoint: .trailing))
//            .fill(
//                RadialGradient(
//                    colors: [.red, .blue],
//                    center: .center,
//                    startRadius: 5,
//                    endRadius: 200)
//            )
//            .fill(
//                AngularGradient(
//                    colors: [.blue, .red],
//                    center: .top,
//                    angle: .degrees(-135)
//                )
//            )
            .frame(width: 200, height: 200)
            .cornerRadius(10)
    }
}

#Preview {
    SwiftUIGradients()
}
