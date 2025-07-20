import SwiftUI

struct SwiftUIScrollView: View {
    var body: some View {
//        ScrollView(.vertical, showsIndicators: false, content: {
//            VStack {
//                ForEach(1..<20) { Int in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(height: 200)
//                }
//            }
//        })
        
//        ScrollView(.horizontal, showsIndicators: false, content: {
//            HStack {
//                ForEach(1..<20) { Int in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 100, height: 200)
//                }
//            }
//        })
        
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: [GridItem(.flexible())]) {
                ForEach(1..<10) { Int in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(1..<20) { int in
                                Rectangle()
                                    .frame(width: 150, height: 150)
                                    .cornerRadius(10)
                                    .padding(.all, 4)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SwiftUIScrollView()
}
