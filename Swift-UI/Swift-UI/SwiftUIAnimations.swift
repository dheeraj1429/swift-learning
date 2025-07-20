import SwiftUI

struct SwiftUIAnimations: View {
    @State private var isAnimated: Bool = false
    @State private var progress: Double = 0
    
    var body: some View {
        VStack {
            Button {
                progress += 0.5
                isAnimated.toggle()
            } label: {
                Text("Animation")
            }
            .buttonStyle(.bordered)
            
            ProgressView(value: progress)
                .animation(.default, value: progress)
            Rectangle()
                .fill(isAnimated ? Color.red : Color.blue)
                .frame(width: 100, height: 100)
                .cornerRadius(10)
                .animation(.default, value: isAnimated)
        }
    }
}

#Preview {
    SwiftUIAnimations()
}
