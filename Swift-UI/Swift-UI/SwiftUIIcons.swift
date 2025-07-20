import SwiftUI

struct SwiftUIIcons: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
//            .scaledToFill()
            .foregroundColor(.red)
            .frame(width: 200, height: 200)
//            .clipped()
    }
}

#Preview {
    SwiftUIIcons()
}
