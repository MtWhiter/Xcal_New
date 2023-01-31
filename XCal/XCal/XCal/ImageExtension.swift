//
//  ImageExtension.swift
//  XCal
//
//  Created by Sirilux  oksuk on 29/1/2566 BE.
//

import SwiftUI

extension Image{
    func PicImport() -> some View{
        self.resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
            .clipped()
            .overlay(){
                ZStack{
                    Image(systemName: "camera.fill")
                        .foregroundColor(.gray)
                        .offset(y: 60)
                    
                    RoundedRectangle(cornerRadius: 100)
                        .stroke(.white,lineWidth: 4)
                }
            }
    }
}
