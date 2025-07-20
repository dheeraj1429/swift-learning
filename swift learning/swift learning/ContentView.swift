import SwiftUI

struct ContentView: View {
    @State private var input: String = ""
    
    var body: some View {
        VStack {
            Text("Please enter your input")
            TextField("Input", text: $input)
                .padding()
                .textFieldStyle(.roundedBorder)
            Button {
                main(input: input)
            } label: {
                Text("Click me")
            }
            .frame(width: 150, height: 50)
            .background(.blue)
            .foregroundColor(.white)
            .bold()
            .clipShape(Capsule())

        }
        .padding()
    }
}

#Preview {
    ContentView()
}

func main(input: String) {
    arithmeticOperators()
}
