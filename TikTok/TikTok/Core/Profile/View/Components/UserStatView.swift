import SwiftUI

struct UserStatView: View {
    var value: Int
    var title: String
    
    var body: some View {
        Text("\(value)")
            .font(.subheadline)
            .fontWeight(.bold)
        Text(title)
            .font(.caption)
            .foregroundStyle(.gray)
    }
}

#Preview {
    UserStatView(value: 10, title: "Following")
}
