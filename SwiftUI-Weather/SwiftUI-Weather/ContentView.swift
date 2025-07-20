import SwiftUI

struct ContentView: View {
    @State private var isDay: Bool = true
    
    var body: some View {
        ZStack {
            BackgroundView(isDay: isDay)
            VStack {
                CityNameView(cityName: "Cupertino, CA")
                TodayTemperature(isDay: isDay)
                WeatherView()
                Spacer()
                ButtonView(isDay: $isDay)
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct ButtonView: View {
    @Binding var isDay: Bool
    
    var body: some View {
        Button {
            isDay.toggle()
        } label: {
            Text("Change Day Time")
                .frame(width: 280, height: 50)
                .background(.white)
                .font(.system(size: 18, weight: .bold, design: .default))
                .cornerRadius(10)
        }
    }
}
