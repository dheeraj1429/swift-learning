import SwiftUI
import Foundation

struct WeatherView: View {
    var body: some View {
        HStack(spacing: 10) {
            WeatherDayView(
                dayOfWeek: "TUE",
                imageName: "cloud.sun.fill",
                tmperature: 70)
            WeatherDayView(
                dayOfWeek: "WED",
                imageName: "sun.max.fill",
                tmperature: 50)
            WeatherDayView(
                dayOfWeek: "THU",
                imageName: "wind.snow",
                tmperature: 40)
            WeatherDayView(
                dayOfWeek: "FRI",
                imageName: "sunset.fill",
                tmperature: 55)
            WeatherDayView(
                dayOfWeek: "SAT",
                imageName: "snow",
                tmperature: 60)
        }
    }
}

