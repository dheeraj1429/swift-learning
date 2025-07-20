import SwiftUI
import Foundation

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 40, height: 40)
                .padding(.trailing, 20)
            Text(framework.name)
                .font(.title3)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.frameworks[0])
}
