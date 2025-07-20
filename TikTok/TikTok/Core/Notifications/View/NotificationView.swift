import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false, content: {
                LazyVStack {
                    ForEach(1..<50) { notification in
                        NotificationCellView()
                    }
                }
                .padding(.top)
            })
            .navigationTitle("Notifications")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NotificationView()
}
