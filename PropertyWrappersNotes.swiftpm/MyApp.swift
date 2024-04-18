import SwiftUI

@main
struct MyApp: App {
    
    @StateObject var highScore: HighScore = HighScore()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(highScore)
        }
    }
}
