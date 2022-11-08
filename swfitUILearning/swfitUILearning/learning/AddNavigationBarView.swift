//
//  AddNavigationBarView.swift
//  swfitUILearning
//
//  Created by Ray on 2022/11/8.
//

import SwiftUI

struct AddNavigationBarView: View {
    var body: some View {
    
        NavigationView {
            Form {
                Section {
                    Text("navigation bar title test")
                }
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct AddNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        AddNavigationBarView()
    }
}
