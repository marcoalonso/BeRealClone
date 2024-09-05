//
//  MemoryView.swift
//  BeRealClone
//
//  Created by Marco Alonso on 04/09/24.
//

import SwiftUI

struct MemoryView: View {
    
    var day: Int
    
    var body: some View {
        VStack {
            ZStack {
                Text("\(day)")
                    .foregroundColor(.white)
                    .zIndex(1)
                
                
                Image("back")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width / 8, height: 70)
                    .cornerRadius(6)
                    .overlay {
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(.white, lineWidth: 1.5)
                            .frame(width: UIScreen.main.bounds.width / 8, height: 70)
                    }
            }
        }
    }
}

#Preview {
    MemoryView(day: 30)
}
