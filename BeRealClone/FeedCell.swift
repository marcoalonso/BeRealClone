//
//  FeedCell.swift
//  BeRealClone
//
//  Created by Marco Alonso on 02/09/24.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                //Username
                HStack {
                    Image("marco")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .cornerRadius(20)
                    
                    VStack(alignment: .leading) {
                        Text("marcoalonso")
                            .foregroundStyle(.white)
                            .fontWeight(.semibold)
                            .font(.system(size: 16))
                        
                        Text("iOS Developer - 7 hr late")
                            .foregroundStyle(.white)
                            .font(.system(size: 14))
                    }
                }
                .padding(.horizontal)
                
                // Image
                
                ZStack {
                    
                    VStack {
                        Spacer()
                        HStack {
                            
                            Spacer()
                            
                            VStack {
                                Image(systemName: "bubble.left.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                    .shadow(color: .black, radius: 3, x: 1, y: 1)
                                
                                Image(systemName: "face.smiling.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                    .shadow(color: .black, radius: 3, x: 1, y: 1)
                                    .padding(.top, 15)
                            }
                            .padding(.trailing, 20)
                            .padding(.bottom, 40)
                        }
                    }
                    .zIndex(1)
                    
                    VStack {
                        Image("goku")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                        
                        HStack {
                            Text("Add a comment ...")
                                .foregroundStyle(.gray)
                                .padding(.leading, 8)
                            
                            Spacer()
                        }
                    }
                    
                    VStack {
                        HStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.black)
                                .frame(width: 125, height: 165)
                                .overlay(
                                    Image("marco")
                                        .resizable()
                                        .scaledToFit()
                                        .cornerRadius(8)
                                        .frame(width: 120, height: 160)
                                )
                                .padding(.leading, 25)
                            
                            Spacer()
                        }
                        .padding(.top, 18)
                        
                        Spacer()
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: 600)
        }
    }
}

#Preview {
    FeedCell()
}
