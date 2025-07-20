import SwiftUI
import Foundation

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var tmperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(tmperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }.padding()
    }
}
