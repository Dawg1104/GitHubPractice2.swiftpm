import SwiftUI

struct ContentView: View {
    @State var number1 = 0
    @State var number2: Int = 0
    var body: some View {
        
        TextField("enter a number", value: $number1, format: .number)
            .textFieldStyle(.roundedBorder)
        
        TextField("", value: $number2, format: .number)
        
        Button(action: answer = number1 + number2) {
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 300, height: 130)
                    .foregroundStyle(.blue)
                Text("Add")
                    .foregroundStyle(.white)
                    .bold()
                    .font(.largeTitle)
            }
        }
    }
}
