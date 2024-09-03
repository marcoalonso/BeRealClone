//
//  ThreeDots.swift
//  BeRealClone
//
//  Created by Marco Alonso on 02/09/24.
//

import SwiftUI

struct ThreeDots: View {
    var size: CGFloat
    var color: Color
    
    var body: some View {
        HStack {
            Image(systemName: "circle.fill")
                .foregroundColor(color)
                .font(.system(size: size))
            Image(systemName: "circle.fill")
                .foregroundColor(color)
                .font(.system(size: size))
                .padding(.leading, -4)
            Image(systemName: "circle.fill")
                .foregroundColor(color)
                .font(.system(size: size))
                .padding(.leading, -4)
        }
    }
}

#Preview {
    ThreeDots(size: 4, color: .black)
}
