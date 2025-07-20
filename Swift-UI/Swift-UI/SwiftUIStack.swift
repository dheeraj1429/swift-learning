import SwiftUI

struct SwiftUIStack: View {
    var body: some View {
//        VStack(alignment: .trailing, spacing: 0, content: {
//            Rectangle()
//                .frame(width: 200, height: 200)
//                .foregroundColor(.blue)
//            Rectangle()
//                .frame(width: 100, height: 100)
//                .foregroundColor(.red)
//        })
        ZStack(content: {
            Rectangle()
                .foregroundColor(.gray)
                .frame(width: 400, height: 800)
            
            VStack(content: {
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 200, height: 200)
                
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 200, height: 200)
                
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 200, height: 200)
            })
        })
    }
}

#Preview {
    SwiftUIStack()
}
