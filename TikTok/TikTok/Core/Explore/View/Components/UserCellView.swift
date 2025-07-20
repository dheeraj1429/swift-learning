import SwiftUI

struct UserCellView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray5))
            
            VStack(alignment: .leading, content: {
                Text("Test_user")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Test name")
                    .font(.footnote)
            })
            
            Spacer()
        }
    }
}

#Preview {
    UserCellView()
}
