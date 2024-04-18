import SwiftUI

struct ContentView: View {
    
    @State var value1: Int?
    @State var value2: Int?
    @State var answer: String = ""
    @State var equal64: Bool = false
    
    var body: some View {
        
        VStack {
                            HStack{
                                TextField("Enter a num", value: $value1, format: .number)
                                    .textFieldStyle(.roundedBorder)
                                TextField("Enter a num", value: $value2, format: .number)
                                    .textFieldStyle(.roundedBorder)
                            }
                            Button(action: {
                                answer = ("\((value1 ?? 0) * (value2 ?? 0))")
                                if answer == "64" {
                                    equal64 = true
                                } else {
                                    equal64 = false
                                }
                            }, label: {
                                Text("Multiply")
                            })
                            Button(action: {
                                answer = ("\((value1 ?? 0) + (value2 ?? 0))")
                                if answer == "64" {
                                    equal64 = true
                                } else {
                                    equal64 = false
                                }
                            }, label: {
                                Text("Add")
                            })
                            Button(action: {
                                answer = ("\((value1 ?? 0) - (value2 ?? 0))")
                                if answer == "64" {
                                    equal64 = true
                                } else {
                                    equal64 = false
                                }
                        
                            }, label: {
                                Text("Subtract")
                            })
            Text("\(answer)")
                .padding()
            Spacer()
            if equal64 == true{
                Image("BMW")
            }
        }
        
        
        
    }
}
