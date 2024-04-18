import SwiftUI

struct ContentView: View {
    @State var playerDice: [Die] = []
    @ObservedObject var die1: Die = Die(color: "Red", value: 3)
    @ObservedObject var die2: Die = Die(color: "White", value: 2)
    @State var showAlert: Bool = false
    var combineValue: Int {
        var total = die1.value + die2.value
        return total
    } 

    var body: some View {
        VStack{
            HStack {
                Button(action: {
                    die1.roll()
                    die2.roll()
                    if combineValue == 7 {
                        showAlert = true
                    }
                    if combineValue == 11 {
                        showAlert = true
                    }
                }, label: {
                    Image(die2.imageName)
                        .resizable()
                        .frame(width:50,height:50)
                }).alert(("Congrats You Won!"), isPresented: $showAlert) {
                    Button ("OK"){print("Alert Dismissed")}
                }
             
                Button(action: {
                }, label: {
                    Image(die1.imageName)
                        .resizable()
                        .frame(width:50,height:50)
                        .onTapGesture(perform: {
                            die1.roll()
                            die2.roll()
                            if combineValue == 7 {
                                showAlert = true
                            }
                            if combineValue == 11 {
                                showAlert = true
                            }
                        }).alert(("Congrats You Won!"), isPresented: $showAlert) {
                            Button ("OK"){print("Alert Dismissed")}
                        }
                })
            }
        }
    }
}
