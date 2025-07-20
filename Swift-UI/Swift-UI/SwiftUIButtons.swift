import SwiftUI

struct SwiftUIButtons: View {
    @State var title: String = "This is some title"
    
    var body: some View {
        VStack {
            Text(title)
                .padding(.bottom, 10)
//            Button("Learn More") {
//                title = "Learn More"
//            }
            
//            Button {
//                title = "Learn More"
//            } label: {
//                Text("Learn More")
//                    .font(.headline)
//                    .fontWeight(.bold)
//                    .foregroundColor(.red)
//                    .padding()
//                    .background(
//                        Color.blue
//                            .cornerRadius(10)
//                    )
//            }
            
//            Button {
//                title = "Learng More"
//            } label: {
//                Circle()
//                    .fill(.red)
//                    .frame(width: 30, height: 30)
//            }
            
            Button {
                title = "learning more"
            } label: {
                Text("Learn More")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.regular)
            .buttonBorderShape(.roundedRectangle)
//            .disabled(true)
        }
    }
}

#Preview {
    SwiftUIButtons()
}
