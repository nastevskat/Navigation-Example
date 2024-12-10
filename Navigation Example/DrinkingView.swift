
import SwiftUI

struct DrinkingView: View {
    let name: String
    let age: String
    
    var numericalAge: Int?{
        Int(age)
    }
    var text: String{
        if let numericalAge {
            if numericalAge > 18{
                return "Drinking age."
            } else {
                return "Not drinking age."
            }
        } else {
            return "invalid age"
        }
    }
    var body: some View {
        ZStack {
            Color
                .blue
                .opacity(0.3)
                .ignoresSafeArea()
            Text(text)
        }
    }
}

#Preview {
    DrinkingView(name: "Tamara", age: "24")
}
