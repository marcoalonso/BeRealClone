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
                ScrollView {
                    VStack {
                        VStack {
                            ZStack {
                                VStack(alignment: .leading) {
                                    Image("back")
                                        .resizable()
                                        .scaledToFit()
                                        .cornerRadius(5)
                                }
                                
                                VStack {
                                    HStack {
                                        Image("marco")
                                            .resizable()
                                            .scaledToFit()
                                            .border(.black)
                                            .cornerRadius(2)
                                            .frame(width: 20, height: 40)
                                            .padding(.leading)
                                        Spacer()
                                    }
                                    .padding(.top, 18)
                                    Spacer()
                                }
                            }
                            .frame(width: 100)
                        }
                        
                        VStack {
                            Text("Add a caption ...")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                            
                            Text("View Comment")
                                .foregroundColor(.gray)
                            
                            HStack {
                                Text("Testing - this app - 1 hr late")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 12))
                                ThreeDots(size: 3, color: .gray)
                            }
                        }
                        
                        ForEach(1..<8) { _ in
                        FeedCell()
                        }
                    }
                    .padding(.top, 80)
                }
                
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
