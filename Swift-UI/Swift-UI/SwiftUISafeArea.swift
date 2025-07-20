import SwiftUI

struct SwiftUISafeArea: View {
    var body: some View {
        ScrollView {
            ForEach(1..<20) { Int in
                Rectangle()
                    .fill(Color.red)
                    .frame(height: 200)
            }
        }
        
//        ZStack(alignment: .top, content: {
//            VStack(content: {
//                Text("Hello")
//                Spacer()
//            })
//        })
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(.red)
//        .ignoresSafeArea(.all)
    }
}

#Preview {
    SwiftUISafeArea()
}
