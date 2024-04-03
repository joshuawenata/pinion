import SwiftUI

struct Back: View {
    var label: String
    var terminalLabel: String
    var busStop: Array<String>
    @Binding var currentIndex: Int
    
    var body: some View {
        Button(action: {
            currentIndex -= 1
        }) {
            HStack {
                let customColor: Color = Color(red: 30/255, green: 178/255, blue: 166/255) // Divide by 255
                Image(systemName: "arrow.left.square")
                    .font(.system(size: 100))
                    .foregroundColor(customColor)
                Text(label)
                    .font(.largeTitle)
            }
            .foregroundColor(.black)
        }
        .disabled(currentIndex==0)
    }
}
