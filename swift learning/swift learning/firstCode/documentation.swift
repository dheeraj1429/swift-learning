import Foundation

func documentation() {
    do {
        try print(sayHello(name: "Dheeraj"))
        try print(sayHello(name: "Jhon"))
    }catch {
        print("Error capture")
    }
}

func sayHello(name: String) throws -> String {
    if(name == "Jhon") {
        throw "Worng input error"
    }
    let returnString = "Hello, \(name)"
    return returnString
}

extension String: @retroactive LocalizedError {
    public var errorDescription: String? { return self }
}
