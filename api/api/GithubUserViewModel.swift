import Foundation

struct GithubUser: Codable {
    let login: String
    let avatarUrl: String
}

enum GHErrors: Error, LocalizedError {
    case invalidURL
    case invalidStatusCode
    case decodingFailed
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Invalid URL"
        case .invalidStatusCode:
            return "Invalid status code"
        case .decodingFailed:
            return "Faild to decode"
        }
    }
}


class GithubUserViewModel: ObservableObject {
    @Published var user: GithubUser?
    @Published var errorMessage: String?
    
    func getUserInfo(userName: String) async throws -> GithubUser {
        guard let url = URL(string: "https://api.github.com/users/\(userName)") else {
            throw GHErrors.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw GHErrors.invalidStatusCode
        }
        
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            return try decoder.decode(GithubUser.self, from: data)
        } catch {
            throw GHErrors.decodingFailed
        }
    }
    
    func fetchUser(userName: String) async {
        do {
            user = try await self.getUserInfo(userName: userName)
        }catch {
            errorMessage = error.localizedDescription
        }
    }
}
