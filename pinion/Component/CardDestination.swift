import SwiftUI

struct CardDestination: View {
    var label: String
    
    // DateFormatter for date
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM yyyy"
        return formatter
    }()
    
    // DateFormatter for time
    let timeFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter
    }()
    
    var body: some View {
        ZStack {
            // Transparent background
            Color.clear
            
            // RoundedRectangle with shadow and border
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .stroke(Color.white.opacity(0.3), lineWidth: 1)
                .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 1)
                .frame(width: .infinity, height: 200)
            
            // Content inside RoundedRectangle
            HStack {
                VStack {
                    Text("Bis Menuju")
                        .font(.title3)
                    Text(label)
                        .bold()
                        .font(.system(size: 70))
                }
                .padding(.horizontal, 90)
                
                VStack {
                    // Using dateFormatter to format date
                    Text(dateFormatter.string(from: Date()))
                        .font(.title3)
                    
                    // Using timeFormatter to format time
                    Text(timeFormatter.string(from: Date()))
                        .bold()
                        .font(.system(size: 70))
                }
                .padding(.horizontal, 140)
            }
            .frame(width: .infinity, height: 200)
        }
        .padding(.horizontal, 125)
    }
}

#Preview {
    CardDestination(label: "Studento")
}
