import Foundation

func logUserInput(input: String) {
    print("user typed input", input)
}

func numberInput(input: String) {
    let nb = Int(input)
    print(nb)
}

func randomInput() {
    let r = Int.random(in: 1...100)
    print(r)
}

func logUserName(name: String) {
    print(name.capitalized)
}
