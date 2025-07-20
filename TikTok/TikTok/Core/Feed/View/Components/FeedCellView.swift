import SwiftUI
import AVKit

struct FeedCellView: View {
    let post: Post
    let player: AVPlayer
    
    init(post: Post, player: AVPlayer) {
        self.post = post
//        self.player = AVPlayer(url: URL(string: post.videoUrl)!)
        self.player = player
    }
    
    var body: some View {
        ZStack {
            CustomVideoPlayer(player: player)
                .containerRelativeFrame([.horizontal, .vertical])
            
            VStack {
                Spacer()
                
                HStack(alignment: .bottom, content: {
                    VStack(alignment: .leading, content: {
                        Text("carlos.saniz")
                            .fontWeight(.semibold)
                        
                        Text("Rocket ship prepare for take off")
                    })
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    
                    Spacer()
                    
                    VStack(spacing: 28, content: {
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.gray)
                        FeedCellItem(iconName: "heart.fill", title: "100K", textModifier: { Text in
                            Text
                                .font(.footnote)
                                .foregroundStyle(.white)
                        })
                        FeedCellItem(iconName: "ellipsis.bubble.fill")
                        FeedCellItem(iconName: "bookmark.fill", width: 22)
                        FeedCellItem(iconName: "arrowshape.turn.up.right.fill")
                    })
                })
                .padding(.bottom, 80)
            }
            .padding()
        }
        .onTapGesture {
            switch player.timeControlStatus {
            case .paused:
                player.play()
            case .waitingToPlayAtSpecifiedRate:
                break
            case .playing:
                player.pause()
            @unknown default:
                break
            }
        }
    }
}

#Preview {
    FeedCellView(post:
                    Post(
                        id: UUID().uuidString,
                         videoUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4"
                    ), player: AVPlayer()
    )
}
