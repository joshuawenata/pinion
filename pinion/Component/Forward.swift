import SwiftUI

struct Forward: View {
    var label: String
    var terminalLabel: String
    var busStop: [String]
    @Binding var currentIndex: Int
    
    var body: some View {
        Button(action: {
            currentIndex += 1
        }) {
            HStack {
                let customColor = Color(red: 30/255, green: 178/255, blue: 166/255) // Divide by 255
                Image(systemName: "arrow.right.square.fill")
                    .font(.system(size: 100))
                    .foregroundColor(customColor)
                Text(label)
                    .font(.largeTitle)
            }
            .foregroundColor(.black)
        }
        .disabled(currentIndex==busStop.count-1)
    }
}
