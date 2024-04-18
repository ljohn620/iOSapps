import SwiftUI

class Die: ObservableObject {
    
   @Published var color: String
   @Published var value: Int
    var imageName: String {
        return "die\(color)_border\(value)"
    }
    
    init(color: String, value: Int) {
        self.color = color
        self.value = value
    }
    func roll() {
        value = Int.random(in: 1...6)
        
        
    }
    

}

