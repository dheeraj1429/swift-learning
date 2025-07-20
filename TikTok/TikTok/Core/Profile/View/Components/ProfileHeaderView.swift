import SwiftUI

struct ProfileHeaderView: View {
    var personUserName: String
    var following: Int
    var followers: Int
    var likes: Int
    
    var body: some View {
        VStack(spacing: 30, content: {
            VStack(spacing: 10, content: {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))
                Text(personUserName)
                    .font(.headline)
            })
            
            HStack(alignment: .center, spacing: 16, content: {
                VStack {
                    UserStatView(value: following, title: "Following")
                }
                .frame(maxWidth: .infinity)
                
                VStack {
                    UserStatView(value: following, title: "Followers")
                }
                .frame(maxWidth: .infinity)
                
                VStack {
                    UserStatView(value: likes, title: "Likes")
                }
                .frame(maxWidth: .infinity)
            })
            
            Button {
                
            } label: {
                Text("Edit profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 35)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        })
    }
}

#Preview {
    ProfileHeaderView(
        personUserName: "@lewis.hamiton",
        following: 7,
        followers: 100,
        likes: 100)
}
