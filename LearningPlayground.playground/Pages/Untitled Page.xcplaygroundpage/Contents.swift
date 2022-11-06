import UIKit
import SwiftUI

var greeting = "Hello, playground"

import PlaygroundSupport

struct ContentView: View {
    // @State var msg: Int = 0
    let msg: Int
    var body: some View {
        Text("我的\(msg)").foregroundColor(.blue)
            .padding()
    }
}
PlaygroundPage.current.setLiveView(ContentView(msg: 3))
