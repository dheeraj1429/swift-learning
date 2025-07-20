import SwiftUI
import AVKit

struct FeedView: View {
    @StateObject var feedViewModel: FeedViewModel = FeedViewModel()
    @State private var scrollPosition: String?
    @State private var player = AVPlayer()
    
    var body: some View {
        ScrollView(showsIndicators: false, content: {
            LazyVStack(spacing: 0, content: {
                ForEach(feedViewModel.posts, id: \.self.id) { post in
                    FeedCellView(post: post, player: player)
                        .onAppear { playInitialVideoIfNecessary() }
                }
            })
            .scrollTargetLayout()
        })
        .scrollPosition(id: $scrollPosition)
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea(.all)
        .onChange(of: scrollPosition) { oldValue, newValue in
            playVideoOnChangeOfScrollPosition(postId: newValue)
        }
    }
    
    func playInitialVideoIfNecessary() {
        guard scrollPosition == nil,
              let post = feedViewModel.posts.first,
              player.currentItem == nil else { return }
        
        let item = AVPlayerItem(url: URL(string: post.videoUrl)!)
        player.replaceCurrentItem(with: item)
    }
    
    func playVideoOnChangeOfScrollPosition(postId: String?) {
        guard let currentPost = feedViewModel.posts.first(where: { $0.id == postId }) else {
            return
        }
        
        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: URL(string: currentPost.videoUrl)!)
        player.replaceCurrentItem(with: playerItem)
        player.play()
    }
}

#Preview {
    FeedView()
}
