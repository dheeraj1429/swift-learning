import SwiftUI

struct PostGridView: View {
    let coloums: [GridItem] = [
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2)
    ]
    
    
    var body: some View {
        LazyVGrid(columns: coloums, spacing: 2) {
            ForEach(1..<20) { post in
                Rectangle()
                    .fill(Color.red)
                    .frame(height: 180)
            }
        }
    }
}

#Preview {
    PostGridView()
}
