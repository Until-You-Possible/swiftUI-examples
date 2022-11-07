//
//  ShowHIdingView.swift
//  swfitUILearning
//
//  Created by Ray on 2022/11/7.
//

import SwiftUI

struct ShowHIdingView: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        
        VStack {
            Button("Show Sheet") {
                showingSheet.toggle()
            }
            .sheet(isPresented: $showingSheet) {
               //  DismissView()
            }
        }
    }
}

struct ShowHIdingView_Previews: PreviewProvider {
    static var previews: some View {
        ShowHIdingView()
    }
}
