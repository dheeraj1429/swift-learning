import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @Binding var isDetailViewShowing: Bool
    @Binding var isShowingSafariView: Bool
    
    var body: some View {
        VStack {
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                isShowingSafariView.toggle()
            } label: {
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: (URL(string: framework.urlString) ?? URL(string: "www.apply.com"))!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.frameworks[1],isDetailViewShowing: .constant(false), isShowingSafariView: .constant(false))
}
