//
//  loadAsycImage.swift
//  swfitUILearning
//
//  Created by Ray on 2022/11/29.
//

import SwiftUI

struct loadAsycImage: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        AsyncImage(url: URL(string: "https://img1.doubanio.com/view/photo/l/public/p2292035027.jpg")) { image in
            image.resizable() // 填充
        } placeholder: {
            Color.red // 占位背景色
        }
        .frame(width: 128, height: 128) // 大小
        .clipShape(RoundedRectangle(cornerRadius: 25)) // 圆角
        
        AsyncImage(url: URL(string: "https://img1.doubanio.com/view/photo/l/public/p2292035027.jpg")) { phase in
            if let image = phase.image {
                image // Displays the loaded image.
            } else if phase.error != nil {
                Color.red // Indicates an error.
            } else {
                Color.blue // Acts as a placeholder.
            }
        }

    }
}

struct loadAsycImage_Previews: PreviewProvider {
    static var previews: some View {
        loadAsycImage()
    }
}
