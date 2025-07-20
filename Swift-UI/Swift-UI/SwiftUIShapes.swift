import SwiftUI

struct SwiftUIShapes: View {
    var body: some View {
//        Circle()
//            .fill(Color.red)
//            .foregroundColor(.blue)
//            .stroke()
//            .stroke(Color.blue, lineWidth: 1.0)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 10, lineCap: .round, dash: [30]))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.red, lineWidth: 20)
//        Ellipse()
//            .fill(Color.red)
//            .foregroundColor(.blue)
//            .trim(from: 0.2, to: 1.0)
//            .frame(width: 200, height: 100)
        Capsule()
            .fill(Color.red)
            .foregroundColor(.blue)
            .frame(width: 200, height: 100)
    }
}

#Preview {
    SwiftUIShapes()
}
