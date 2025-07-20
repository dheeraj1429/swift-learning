import SwiftUI

struct SwiftUIForEach: View {
    let data: [String] = ["1", "2", "3", "4"]
    
    var body: some View {
        ForEach(data, id: \.self) { index in
            Text("\(index)")
        }
    }
}

#Preview {
    SwiftUIForEach()
}
