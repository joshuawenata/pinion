import SwiftUI

struct ContentView: View {
    @State private var isActive = false
    let busStops: [String] = ["Terminal Intermoda", "Icon", "Horizon", "Extreme", "Saveria", "Casa de Parco", "Smile Plaza", "The Breeze", "CBD Timur", "AEON Mall", "AEON Mall", "CBD Timur", "Simpang", "Allevre", "Fiore", "Studento", "Naturale", "Fresco", "Primavera", "Foresta", "De Park", "De Fran", "De Helic", "De Bras", "Jadeite", "Greenwich", "QBIG 2", "QBIG 3", "BCA", "FBL 2", "FBL 1", "ICE 1", "ICE 2", "ICE 6", "ICE 5", "CBD Barat", "CBD Barat", "Simplicity", "Terminal Intermoda"]
    @State private var currentIndex = 0
    
    var body: some View {
        ZStack {
            if !isActive {
                SplashView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            self.isActive = true
                        }
                    }
            } else {
                PickRuteView(currentIndex: $currentIndex, busStop: busStops)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
