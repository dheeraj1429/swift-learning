import Foundation

class FeedViewModel: ObservableObject {
    @Published var posts: [Post] = [Post]()
    
    let videoUrls = [
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4"
    ]
    
    init() {
        fetchPosts()
    }
    
    func fetchPosts() {
        self.posts = [
            Post(id: UUID().uuidString, videoUrl: videoUrls[0]),
            Post(id: UUID().uuidString, videoUrl: videoUrls[1]),
            Post(id: UUID().uuidString, videoUrl: videoUrls[2]),
            Post(id: UUID().uuidString, videoUrl: videoUrls[3])
        ]
    }
}
