import SwiftUI

struct PickRuteView: View {
    @State private var selectedOption = 0
    @State private var isShowingHomeView = false
    @Binding var currentIndex: Int
    var busStop: Array<String>
    
    let options = ["Intermoda - De Park (Rute 2)", "Greenwich - Sektor 1.3", "The Breeze - AEON - ICE"]
    
    var body: some View {
        ZStack {
            // First page (PickRuteView)
            VStack {
                Text("Mulai sesi menyetir dengan memilih rute dibawah ini")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .padding()
                
                // Picker view
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(red: 245/255, green: 245/255, blue: 245/255))
                    .frame(maxWidth: 400, maxHeight: 50)
                    .overlay(
                        Picker("Select an option", selection: $selectedOption) {
                            ForEach(options.indices, id: \.self) { index in
                                Text(self.options[index])
                                    .foregroundColor(.black) // Change text color to black
                                    .font(.title) // Increase font size
                                    .padding(.vertical, 10) // Add vertical padding
                            }
                        }
                        .pickerStyle(DefaultPickerStyle()) // Change to DefaultPickerStyle
                    )
                    .padding(20) // Add padding around the picker
                    .accentColor(.black)
                
                // Button to navigate to HomeView
                Button(action: {
                    self.isShowingHomeView = true
                }) {
                    Text("Mulai Sesi")
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal, 30)
                        .font(.title3)
                        .background(Color(red: 0.12, green: 0.7, blue: 0.65))
                        .cornerRadius(8)
                        .bold()
                }
                .padding(.top, 30)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            .opacity(isShowingHomeView ? 0 : 1)
            
            // Second page (HomeView)
            if isShowingHomeView {
                HomeView(terminalLabel: options[selectedOption], busStop: busStop, currentIndex: $currentIndex)
            }
        }
        .navigationBarTitle("Pick Rute")
        .navigationBarHidden(true)
    }
}
