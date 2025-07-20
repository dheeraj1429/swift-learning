import Foundation

enum GHFollowersErrors: Error, LocalizedError {
    case invalidURL
    case invalidResponseStatus
    case decodedFailed
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Invalid URL"
        case .invalidResponseStatus:
            return "Invalid response status"
        case .decodedFailed:
            return "Faild to decode"
        }
    }
}

class GithubFollowersViewModel: ObservableObject {
    @Published var followers: [GithubUser] = []
    @Published var errorMessage: String?
    
    
    func getFollowers(userName: String) async throws -> [GithubUser] {
        guard let url = URL(string: "https://api.github.com/users/\(userName)/followers") else {
            throw GHFollowersErrors.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw GHFollowersErrors.invalidResponseStatus
        }
        
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            return try decoder.decode([GithubUser].self, from: data)
        } catch {
            throw GHFollowersErrors.decodedFailed
        }
    }
    
    func fetchFollowers(userName: String) async {
        do {
            followers = try await getFollowers(userName: userName)
            print("DEBUG: \(followers)")
        } catch {
            print("DEBUG: \(error.localizedDescription)")
            errorMessage = error.localizedDescription
        }
    }
}
