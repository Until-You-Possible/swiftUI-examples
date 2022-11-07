//
//  deletingItemsUsingOnDeleteView.swift
//  swfitUILearning
//
//  Created by Ray on 2022/11/7.
//

import SwiftUI

struct deletingItemsUsingOnDeleteView: View {
    
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    
    func removeRows(at offsets: IndexSet) {
        print("IndexSet", IndexSet().self)
        numbers.remove(atOffsets: offsets)
    }
    
    var body: some View {
        
        NavigationView {
          
            
            VStack {
    //            List(numbers, id: \.self) {
    //                Text("Row\($0)")
    //            }
    //            Button("Add Number") {
    //                numbers.append(currentNumber)
    //                currentNumber += 1
    //            }
                
                ForEach(numbers, id: \.self) {
                    Text("Row item\($0)")
                        .padding()
                }
                .onDelete(perform: removeRows)
                Button("Add Number") {
                    print("currentNumner", currentNumber)
                    numbers.append(currentNumber)
                    currentNumber += 1
                    print("currentNumner", currentNumber)
                }
                
            }
            .toolbar {
                EditButton()
            }
            
        }

        
    }
}

struct deletingItemsUsingOnDeleteView_Previews: PreviewProvider {
    static var previews: some View {
        deletingItemsUsingOnDeleteView()
    }
}
