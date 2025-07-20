import SwiftUI

struct NotificationCellView: View {
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 35, height: 35)
                .foregroundStyle(Color(.systemGray5))
            HStack(content: {
                Text("max.verstappen")
                    .font(.subheadline)
                    .fontWeight(.semibold) +
                Text(" liked one of your posts.")
                    .font(.footnote) +
                Text(" 3w")
                    .font(.footnote)
                    .fontWeight(.light)
            })
            Spacer()
            Rectangle()
                .frame(width: 40, height: 60)
                .cornerRadius(6)
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationCellView()
}
