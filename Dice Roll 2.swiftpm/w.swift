import SwiftUI

//class dice: ObservableObject {
//    
//    @Published var dice: [Dice] = []
//    
//    init() {
//    }
//    
//    func loadDice() {
//        dice.removeAll()
//        let color: [String] = ["Red", "White"]
//        let value: [String] = ["1","2","3","4","5","6"]
//        
//    }
//      
//    func shuffle() {
//        dice.shuffle()
//    }
//    
//    
//    func dealDice() -> Dice {
//        if dice.count > 0 {
//            return
//            dice.removeLast()
//        }
//        else {
//            print("Out of Dice")
//            loadDice()
//            shuffle()
//            return dealDice()
//        }
//    }
//    
//    
//}
