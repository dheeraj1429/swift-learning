import SwiftUI

struct SwiftUILabel: View {
    @State private var showTitle: Bool = false
    
    var labelsWithTitle: some View {
            VStack {
                Label("Rain", systemImage: "cloud.rain")
                Label("Snow", systemImage: "snow")
                Label("Sun", systemImage: "sun.max")
            }
            .labelStyle(TitleAndIconLabelStyle())
        }
    
    var labelsWithIconOnly: some View {
        VStack {
            Label("Rain", systemImage: "cloud.rain")
            Label("Snow", systemImage: "snow")
            Label("Sun", systemImage: "sun.max")
        }
        .labelStyle(IconOnlyLabelStyle())
    }

    var body: some View {
        VStack {
            ZStack {
                if (showTitle) {
                    labelsWithTitle
                        .transition(.opacity.combined(with: .move(edge: .leading)))
                }else {
                    labelsWithIconOnly
                        .transition(.opacity.combined(with: .move(edge: .trailing)))
                }
            }
            .animation(.easeIn(duration: 0.4), value: showTitle)
            
            VStack {
                Button {
                    showTitle.toggle()
                } label: {
                    Text("Animate")
                }
                .buttonStyle(.bordered)
            }
        }
    }
}


#Preview {
    SwiftUILabel()
}
