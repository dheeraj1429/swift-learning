import SwiftUI

struct SwiftUIPadding: View {
    var body: some View {
//        Text("Hello, World!")
////            .frame(width: 100, height: 100)
////            .padding()
////            .padding(.top, 10)
////            .padding(.leading, 10)
////            .padding(.trailing, 10)
////            .background(Color.red)
//            .font(.largeTitle)
//            .fontWeight(.bold)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .padding(.all, 10)
        
        VStack(alignment: .leading, content: {
            Text("Hello, World!")
                .font(.largeTitle)
                .padding(.bottom, 10)
            Text("This is my first time to learn swift and swift ui, it's really amazing")
        })
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(radius: 10)
        )
    }
}

#Preview {
    SwiftUIPadding()
}
