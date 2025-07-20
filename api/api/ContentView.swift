import SwiftUI

struct ContentView: View {
    @StateObject private var githubUserViewModel: GithubUserViewModel = GithubUserViewModel()
    @StateObject private var githubFollowersViewModel: GithubFollowersViewModel = GithubFollowersViewModel()
    
    var body: some View {
        VStack(spacing: 20, content: {
            AsyncImage(url: URL(string: githubUserViewModel.user?.avatarUrl ?? "")) { Image in
                Image
                    .resizable()
                    .frame(width: 120, height: 120)
                    .clipShape(.circle)
            } placeholder: {
                Circle()
                    .fill(Color(.systemGray4))
                    .frame(width: 120, height: 120)
            }
            
            Text(githubUserViewModel.user?.login ?? "USER_NAME")
                .font(.title)
                .bold()
            
            Spacer()
        })
        .task {
            await githubUserViewModel.fetchUser(userName: "dheeraj1429")
            await githubFollowersViewModel.fetchFollowers(userName: "dheeraj1429")
        }
    }
}

#Preview {
    ContentView()
}
