import SwiftUI

struct SwiftUIFrame: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.red)
//            .frame(width: 300, height: 300, alignment: .leading)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .background(Color.red)
            .frame(height: 100)
            .background(Color.green)
            .frame(height: 150)
            .background(Color.blue)
    }
}

#Preview {
    SwiftUIFrame()
}
