import SwiftUI

struct AfButtonView: View {
    let title: String
    @Binding var isShowingSafariView: Bool
    
    var body: some View {
        Button {
            isShowingSafariView.toggle()
        } label: {
            Text(title)
                .frame(width: 280, height: 50)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

#Preview {
    AfButtonView(title: "Learn More", isShowingSafariView: .constant(false))
}
