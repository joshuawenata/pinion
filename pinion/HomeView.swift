import SwiftUI

struct HomeView: View {
    var terminalLabel:String
    var stopLabel:String
    var backLabel:String
    var nextLabel:String
    
    var body: some View {
        ZStack(alignment: .top) {
            Image("TopBg")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack(alignment: .center) {
                
                CardDestination(label: stopLabel)
                    .padding(.top, 130)
                
                Spacer()
                
                HStack(alignment: .center) {
                    CardIn(number: "10")
                        .padding(.top, 20)
                    CardOut(number: "20")
                        .padding(.top, 20)
                }
                HStack {
                    Back(label: backLabel)
                        .padding()
                    Spacer()
                    Forward(label: nextLabel)
                        .padding()
                }
            }
            
            Image("TopMostImage") // Your topmost image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding(.top, 20) // Adjust the top padding as needed
        }
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(terminalLabel: "Intermoda De Park (Rute 2)", stopLabel: "Studento", backLabel: "Fiore", nextLabel: "Naturale")
    }
}
