import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFrameWork: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView: Bool = false
    @Published var isShowingSafariView: Bool = false
    
//    let columns: [GridItem] = [GridItem(.flexible()),
//                               GridItem(.flexible()),
//                               GridItem(.flexible())]
    let columns: [GridItem] = [GridItem(.flexible())]
}
