import SwiftUI

struct SwiftUIBackgroundAndOverlays: View {
    var body: some View {
//        Text("Hello, World!")
//            .background(
////                Color.red
////                LinearGradient(
////                    colors: [.red, .blue],
////                    startPoint: .leading,
////                    endPoint: .bottom)
//                Circle()
//                    .fill(Color.red)
//                    .frame(width: 100, height: 100)
//            )
//            .background(
//                Circle()
//                    .fill(LinearGradient(
//                        colors: [.red, .blue],
//                        startPoint: .leading,
//                        endPoint: .trailing))
//                    .frame(width: 200, height: 200)
//            )
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 200, height: 200, alignment: .center)
//            .overlay {
//                Text("1")
//            }
//            .background(
//                Circle()
//                    .fill(Color.red)
//                    .frame(width: 300, height: 300)
//            )
//        Rectangle()
//            .frame(width: 200, height: 200)
//            .overlay {
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 100, height: 100)
//            }
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .shadow(radius: 2)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [.pink, .blue],
                            startPoint: .leading,
                            endPoint: .trailing)
                    )
                    .frame(width: 80, height: 80)
                    .overlay(alignment: .bottomTrailing, content: {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 30, height: 30)
                            .overlay {
                                Text("10")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }
                            .shadow(radius: 2)
                    })
            )
    }
}

#Preview {
    SwiftUIBackgroundAndOverlays()
}
