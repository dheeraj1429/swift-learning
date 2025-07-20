import SwiftUI

struct SwiftUIEnum: View {
    let backgroundColor: Color
    let count: Int
    let fruit: Fruit
    
    enum Fruit: String {
        case apple = "Apple"
        case orange = "Orange"
    }
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        self.fruit = fruit
        
        switch fruit {
        case .apple:
            self.backgroundColor = Color.green
        case .orange:
            self.backgroundColor = Color.orange
        }
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(fruit.rawValue)
                .font(.subheadline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    SwiftUIEnum(count: 10, fruit: .orange)
}
