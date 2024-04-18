import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    @State var age: Int = 17
    
    @EnvironmentObject var score: HighScore
//    @State var score: Int = 0
    
    var body: some View {
       NavigationStack{
           VStack{
               Text("\(score.score)")
               Button(action: {
                   score.score += 1
               }, label: {
                   Text("Press Me")
                       .foregroundColor(.white)
                       .frame(width:200, height:200)
                       .background(Circle())
               })
               TextField("Enter Name", text: $name)
               TextField("Enter age", value: $age, format: .number)
               
               NavigationLink("To Page 2", destination: Page2View(name: name, age: $age))
           }
           .padding()
           .textFieldStyle(.roundedBorder)
           .font(.largeTitle)
       }
    }
}
