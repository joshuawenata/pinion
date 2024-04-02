
//
//  SplashView.swift
//  Test1
//
//  Created by Vincent Saranang on 01/04/24.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            VStack{
                VStack{
                    Image("Vector 2")
                        .resizable()
                        .frame(width: 120, height: 160)
                    Image("Vector 3")
                        .resizable()
                        .frame(width: 28, height: 32)
                }.padding(10)
                
                Text("PINION")
                    .font(.largeTitle)
                    .fontDesign(.rounded)
                  .fontWeight(.heavy)
                  .multilineTextAlignment(.center)
                  .foregroundColor(Color(red: 0.12, green: 0.7, blue: 0.65))
                  .frame(width: 120, height: 32, alignment: .top)
            }
            Image("Vector 7")
                .resizable()
                .frame(width: 450, height: 600)
                .rotationEffect(Angle(degrees: 112.97))
                .position(x: 1500, y: 450)
            Image("Vector 7-1")
                .resizable()
                .frame(width: 450, height: 600)
                .rotationEffect(Angle(degrees: -71.7))
                .position(x: 570, y: 1090)
        }
        .frame(width: 2048, height: 1535)
        .background(.white)
    }
}

#Preview {
    SplashView()
}
