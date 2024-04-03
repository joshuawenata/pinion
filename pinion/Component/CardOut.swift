import SwiftUI

struct CardOut: View {
    @State var number: String
    
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
                        .font(.title)
                    Text("Keluar")
                        .frame(width: 110)
                        .font(.largeTitle)
                        .bold()
                }
                HStack(alignment: .center) {
                    Button(action: {
                        if let intValue = Int(number) {
                            self.number = String(intValue - 1)
                        }
                    }, label: {
                        Image(systemName: "minus.square")
                            .font(.largeTitle)
                    })
                    .foregroundColor(.black)
                    Spacer()
                    Text(number)
                        .bold()
                        .font(.system(size: 150))
                    Spacer()
                    Button(action: {
                        if let intValue = Int(number) {
                            self.number = String(intValue + 1)
                        }
                    }, label: {
                        Image(systemName: "plus.app")
                            .font(.largeTitle)
                    })
                    .foregroundColor(.black)
                }
                .frame(width: 350)
            }
        }
        .padding(.horizontal, 10)
    }
}

struct CardOut_Previews: PreviewProvider {
    static var previews: some View {
        CardOut(number: "10")
    }
}
