import SwiftUI

struct Page2View: View {
    @State var name: String = ""
    @Binding var age: Int
    @EnvironmentObject var highScore: HighScore
    
    var body: some View {
        VStack{
            Text("High Score \(highScore.score)")
            TextField("Enter Name", text: $name)
            TextField("Enter age", value: $age, format: .number)
        }
        .padding()
        .textFieldStyle(.roundedBorder)
        .font(.largeTitle)
    }
}

#Preview {
    Page2View(age: .constant(1))
}
