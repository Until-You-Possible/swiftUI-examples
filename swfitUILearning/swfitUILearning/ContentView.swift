//
//  ContentView.swift
//  swfitUILearning
//
//  Created by Ray on 2022/11/6.
//

import SwiftUI

struct ContentView: View {
    
    @State private var testPicker = 8
    
    var body: some View {
        
        VStack {
            FattherView()
            
            Picker("Test Picker", selection: $testPicker) {
                ForEach(0..<40) {
                    Text("\($0)")
                }
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
