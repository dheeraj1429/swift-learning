import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
                List {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(
                            destination: FrameworkDetailView(
                                framework: framework,
                                isDetailViewShowing: $viewModel.isShowingDetailView,
                                isShowingSafariView: $viewModel.isShowingSafariView)) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            .navigationTitle("Apply Frameworks")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}
