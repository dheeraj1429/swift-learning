import SwiftUI

struct SwiftUILazyVGrid: View {
//    let colums: [GridItem] = [
//        GridItem(.flexible()),
//        GridItem(.flexible())
//    ]
    
//    let colums: [GridItem] = [
//        GridItem(.fixed(30)),
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.fixed(30))
//    ]
    
    let colums: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]

    
    var body: some View {
        ScrollView {
            Rectangle()
                .frame(height: 400)
            
            LazyVGrid(
                columns: colums,
                alignment: .center,
                spacing: nil,
                pinnedViews: [.sectionHeaders]
            ) {
                Section(header: Text("Section 1")) {
                    ForEach(1..<100) { Int in
                        Rectangle()
                            .fill(Color.red)
                            .frame(height: 150)
                    }
                }
                Section(header: Text("Section 2")) {
                    ForEach(1..<100) { Int in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(height: 150)
                    }
                }
            }
            
//            LazyVGrid(columns: colums) {
//                ForEach(1..<100) { Int in
//                    Rectangle()
//                        .fill(Color.red)
//                        .frame(height: 150)
//                }
//            }
        }
    }
}

#Preview {
    SwiftUILazyVGrid()
}
