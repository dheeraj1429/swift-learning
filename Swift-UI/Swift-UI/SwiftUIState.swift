import SwiftUI

struct SwiftUIState: View {
    @State private var counter: Int = 0
    @State private var backgroundColor: Color = .red

    let colors: [Color] = [.red, .blue, .green, .orange, .pink]
    
    var body: some View {
        VStack {
            Text("Hello, World! \(counter)")
                .padding(.bottom, 5)
            
            Button {
                counter += 1
                backgroundColor = colors.randomElement() ?? colors[0]
            } label: {
                Text("Update counter")
            }
            .buttonStyle(.bordered)
        }
        .background(backgroundColor)
    }
}

#Preview {
    SwiftUIState()
}
