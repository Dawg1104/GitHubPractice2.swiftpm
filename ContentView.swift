import SwiftUI

struct ContentView: View {
    @State var number1 = 0
    @State var number2: Int = 0
    
    @State var answer = 0
    var body: some View {
        
        TextField("enter a number", value: $number1, format: .number)
            .textFieldStyle(.roundedBorder)
        Text("+")
            .font(.title)
        TextField("", value: $number2, format: .number)
            .textFieldStyle(.roundedBorder)
        
        HStack {
            Button(action: { answer = number1 + number2 }) {
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 75, height: 25)
                        .foregroundStyle(.blue)
                    Text("Add")
                        .foregroundStyle(.white)
                        .bold()
                }
            }
            
            Button(action: { answer = number1 - number2 }) {
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 75, height: 25)
                        .foregroundStyle(.blue)
                    Text("Subtract")
                        .foregroundStyle(.white)
                        .bold()
                }
            }
        }
        Text("=")
            .font(.title)
        Text("\(answer)")
            .font(.largeTitle)
            .padding()
            .bold()
    }
}

