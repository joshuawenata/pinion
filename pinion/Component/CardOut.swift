//
//  CardInOut.swift
//  pinion
//
//  Created by Joshua Wenata Sunarto on 02/04/24.
//

import SwiftUI

struct CardOut: View {
    var number: String
    
    var body: some View {
        ZStack {
            // Shadow view behind the HStack
            RoundedRectangle(cornerRadius: 10) // Adjust corner radius as needed
                .stroke(Color.white.opacity(0.3), lineWidth: 1) // Border properties
                .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 1) // Shadow properties
                .frame(width: 500, height: 300) // Match the frame of the HStack
            
            VStack {
                HStack {
                    Image(systemName: "figure.walk.arrival")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text("Keluar")
                        .frame(width: 110)
                        .font(.largeTitle)
                        .bold()
                }
                HStack(alignment: .center) {
                    Image(systemName: "minus.square")
                        .font(.largeTitle)
                    Spacer()
                    Text(number)
                        .bold()
                        .font(.system(size: 150))
                    Spacer()
                    Image(systemName: "plus.app")
                        .font(.largeTitle)
                }
                .frame(width: 350)
            }
            
        }
        .padding(.horizontal, 10)
    }
}

#Preview {
    CardOut(number: "10")
}
