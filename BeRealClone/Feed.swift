//
//  Feed.swift
//  BeRealClone
//
//  Created by Marco Alonso on 02/09/24.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            ZStack {
                VStack {
                    VStack {
                        HStack {
                            Image(systemName: "person.2.fill")
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Text("BeReal.")
                                .foregroundStyle(.white)
                                .fontWeight(.bold)
                                .font(.system(size: 22))
                            
                            Spacer()
                            
                            Image("marco")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .cornerRadius(17.5)
                            
                            
                            
                        }
                        .padding(.horizontal)
                        
                        HStack {
                            Text("My Friends")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                            
                            Text("Discovery")
                                .foregroundColor(.gray)
                        }
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    Feed()
}
