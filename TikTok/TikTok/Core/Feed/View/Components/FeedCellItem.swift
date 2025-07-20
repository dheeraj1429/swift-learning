import SwiftUI

struct FeedCellItem: View {
    var iconName: String
    var width: CGFloat
    var height: CGFloat
    var foregroundStyle: Color
    var action: () -> Void
    var title: String?
    var textModifier: (Text) -> Text
    
    init(
        iconName: String,
        width: CGFloat = 28,
        height: CGFloat = 28,
        foregroundStyle: Color = .white,
        title: String? = nil,
        action: @escaping () -> Void = {},
        textModifier: @escaping (Text) -> Text = { $0 }
    ) {
        self.iconName = iconName
        self.width = width
        self.height = height
        self.foregroundStyle = foregroundStyle
        self.title = title
        self.action = action
        self.textModifier = textModifier
    }
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 6, content: {
                Image(systemName: iconName)
                    .resizable()
                    .frame(width: width, height: height)
                    .foregroundStyle(foregroundStyle)
                if let title {
                    textModifier(Text(title))
                }
            })
        }
    }
}

#Preview {
    FeedCellItem(iconName: "heart.fill", title: "1", textModifier:  { Text in
        Text
            .font(.headline)
            .foregroundStyle(.red)
    })
}
