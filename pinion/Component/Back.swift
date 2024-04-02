//
//  Back.swift
//  pinion
//
//  Created by Joshua Wenata Sunarto on 02/04/24.
//

import SwiftUI

struct Back: View {
    var label: String
    
    var body: some View {
        HStack {
            let customColor: Color = Color(red: 30/255, green: 178/255, blue: 166/255) // Divide by 255
            Image(systemName: "arrow.left.square")
                .font(.system(size: 100))
                .foregroundColor(customColor)
            Text(label)
                .font(.largeTitle)
        }
    }
}

#Preview {
    Back(label: "Fiore")
}

