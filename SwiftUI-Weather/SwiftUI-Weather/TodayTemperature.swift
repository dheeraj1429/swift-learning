import SwiftUI
import Foundation

struct TodayTemperature: View {
    var isDay: Bool
    
    var body: some View {
        VStack(spacing: 6) {
            Image(systemName: isDay ? "cloud.sun.fill" : "moon.stars.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("76°")
                .font(.system(size: 70, weight: .medium, design: .default))
                .foregroundColor(.white)
        }.padding(.bottom, 30)
    }
}
