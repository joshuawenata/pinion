//
//  Route.swift
//  Test1
//
//  Created by Vincent Saranang on 01/04/24.
//

import SwiftUI

struct Route: View {
    @State private var isDropdownVisible = false
    @State private var selectedOptionIndex = 0
    let options = ["Pilih Rute", "Intermoda - De Park (Rute 1)", "Intermoda - De Park (Rute 2)", "Greenwich - Sektor 1.3", "Sektor 1.3 - Greenwich"]
    
    var body: some View {
        ZStack {
            VStack{
                Text("Mulai sesi menyetir dengan \nmemilih rute dibawah ini")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                  .multilineTextAlignment(.center)
                  .foregroundColor(.black)
                
                //Dropdown
                HStack {
                    Button(action: {
                        withAnimation {
                            self.isDropdownVisible.toggle()
                        }
                    }) {
                        HStack {
                            Text(options[selectedOptionIndex])
                                .fontWeight(.bold)
                            Spacer()
                            Image(systemName: "chevron.down")
                    }
                        .padding()
                        .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                        .cornerRadius(8)
                        .frame(width: 550, height: 60)
                    }
                }
                .foregroundColor(.black)
                
                if isDropdownVisible {
                    VStack(alignment: .leading, spacing: 10) {
                        ForEach(0..<options.count, id: \.self) { index in
                            Button(action: {
                                self.selectedOptionIndex = index
                                withAnimation {
                                    self.isDropdownVisible.toggle()
                                }
                            }) {
                                Text(options[index])
                                    .fontWeight(.bold)
                                    .padding()
                                    .frame(width: 550, alignment: .leading)
                            }
                            .foregroundColor(.black)
                        }
                    }
                    .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                    .cornerRadius(8)
                    .padding(.top, 5)
                }
                
                // Mulai Sesi Button
                Button(action: {
                }) {
                    NavigationLink(destination: HomeView()) {
                        Text("Mulai Sesi")
                        .font(.title3)
                        .fontDesign(.rounded)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 144, height: 38)
                        .background(Color(red: 0.12, green: 0.7, blue: 0.65))
                        .cornerRadius(8)
                        .frame(width: 144, height: 38, alignment: .center)
                    }
                }
            }
            
            // Layout Background
            Image("Vector 7")
                .resizable()
                .frame(width: 600, height: 800)
                .rotationEffect(Angle(degrees: 112.97))
                .position(x: 1500, y: 400)
            Image("Vector 7-1")
                .resizable()
                .frame(width: 600, height: 800)
                .rotationEffect(Angle(degrees: -71.7))
                .position(x: 500, y: 1150)
        }
        .frame(width: 2048, height: 1535)
        .background(.white)
    }
}

#Preview {
    Route()
}
