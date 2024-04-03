import SwiftUI
import Foundation

struct HomeView: View {
    var terminalLabel: String
    var busStop: Array<String>
    @Binding var currentIndex: Int
    
    var body: some View {
        ZStack(alignment: .top) {
            Image("TopBg")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack(alignment: .center) {
                CardDestination(label: busStop[currentIndex])
                    .padding(.top, 130)
                
                Spacer()
                
                HStack(alignment: .center) {
                    CardIn(number: String(Int(arc4random_uniform(100)) + 1))
                        .padding(.top, 20)
                        .padding(.horizontal, 50)
                    CardOut(number: String(Int(arc4random_uniform(100)) + 1))
                        .padding(.top, 20)
                        .padding(.horizontal, 50)
                }
                HStack {
                    Back(label: currentIndex > 0 ? busStop[currentIndex-1] : "None", terminalLabel: terminalLabel, busStop: busStop, currentIndex: $currentIndex)
                        .padding()
                    Spacer()
                    Forward(label: currentIndex < busStop.count - 1 ? busStop[currentIndex+1] : "None", terminalLabel: terminalLabel, busStop: busStop, currentIndex: $currentIndex)
                        .padding()
                }
            }
            
        }
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(terminalLabel: "Intermoda De Park (Rute 2)", busStop: ["test"], currentIndex: .constant(0))
    }
}
