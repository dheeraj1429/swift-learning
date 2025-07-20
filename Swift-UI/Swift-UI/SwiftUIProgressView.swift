import SwiftUI

struct SwiftUIProgressView: View {
    @State private var progress: Double = 0
    
    var body: some View {
        VStack {
            ProgressView(value: progress)
//                .progressViewStyle(.circular)
//                .border(.pink, width: 5)
            Button {
                progress += 0.5
            }label: {
                Text("Update progress")
            }
            .buttonStyle(.bordered)
        }
        .padding()
    }
}

#Preview {
    SwiftUIProgressView()
}
