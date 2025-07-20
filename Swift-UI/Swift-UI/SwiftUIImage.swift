import SwiftUI

struct SwiftUIImage: View {
    var body: some View {
        Image("dark-rider")
//            .renderingMode(.template)
            .resizable()
            .frame(width: 400, height: 300)
//            .aspectRatio(contentMode: .fit)
            .scaledToFill()
//            .foregroundColor(.red)
//            .cornerRadius(30)
//            .clipShape(.capsule)
//            .clipShape(.ellipse)
//            .clipShape(.circle)
    }
}

#Preview {
    SwiftUIImage()
}
