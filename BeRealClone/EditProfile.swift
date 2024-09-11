//
//  EditProfile.swift
//  BeRealClone
//
//  Created by Marco Alonso on 11/09/24.
//

import SwiftUI

struct EditProfile: View {
    @State private var width = UIScreen.main.bounds.width
    @State private var fullname = ""
    @State private var username = ""
    @State private var bio = ""
    @State private var location = ""
    
    var body: some View {
        VStack {
            ZStack {
                Color.black.ignoresSafeArea()
                
                VStack {
                    ZStack {
                        HStack {
                            Text("Cancel")
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Text("Save")
                                .foregroundColor(.gray)
                        }
                        .padding(.horizontal, width * 0.05)
                        
                        Text("Edit Profile")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                    }
                    HStack {
                        Spacer()
                        Rectangle()
                            .frame(width: width * 0.95, height: 0.7)
                            .foregroundColor(.gray)
                            .opacity(0.5)
                    }
                    Spacer()
                }
                
                VStack {
                    VStack {
                        ZStack(alignment: .bottomTrailing) {
                            Image("alonso")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 120, height: 120)
                                .cornerRadius(60)
                            
                            
                            
                            ZStack {
                                ZStack {
                                    Circle()
                                        .frame(width: 34, height: 34)
                                        .foregroundColor(.black)
                                    Circle()
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(.white)
                                    Circle()
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(.yellow)
                                        .opacity(0.1)
                                }
                                Image(systemName: "camera.fill")
                                    .font(.system(size: 16))
                                    .shadow(color: .white, radius: 1, x: 1, y: 1)
                            }
                        }
                    }
                    
                    // MENU
                    VStack {
                        Rectangle()
                            .frame(width: width * 0.95, height: 0.7)
                            .foregroundColor(.gray)
                            .opacity(0.3)
                        
                        HStack {
                            HStack {
                                Text("Full Name")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 16))
                                Spacer()
                            }
                            .frame(width: width * 0.22)
                            
                            HStack {
                                TextField("", text: $fullname)
                                    .font(.system(size: 16))
                                    .placeholder(when: fullname.isEmpty) {
                                        Text("Marco").foregroundColor(.white)
                                            .font(.system(size: 16))
                                    }
                                    .foregroundColor(.white)
                                    .padding(.leading, width * 0.05)
                                
                                Spacer()
                            }
                            .frame(width: width * 0.63)
                        }
                        
                        Rectangle()
                            .frame(width: width * 0.95, height: 0.7)
                            .foregroundColor(.gray)
                            .opacity(0.3)
                        
                        HStack {
                            HStack {
                                Text("Username")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 16))
                                Spacer()
                            }
                            .frame(width: width * 0.22)
                            
                            HStack {
                                TextField("", text: $username)
                                    .font(.system(size: 16))
                                    .placeholder(when: username.isEmpty) {
                                        Text("marquito26").foregroundColor(.white)
                                            .font(.system(size: 16))
                                    }
                                    .foregroundColor(.white)
                                    .padding(.leading, width * 0.05)
                                
                                Spacer()
                            }
                            .frame(width: width * 0.63)
                        }
                        
                        Rectangle()
                            .frame(width: width * 0.95, height: 0.7)
                            .foregroundColor(.gray)
                            .opacity(0.3)
                        
                        HStack(alignment: .top) {
                            HStack {
                                Text("Bio")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16))
                                Spacer()
                            }
                            .padding(.leading, -4)
                            .frame(width: width * 0.2)
                            
                            if #available(iOS 16, *) {
                                TextEditor(text: $bio)
                                    .foregroundColor(.white)
                                    .background(.black)
                                    .scrollContentBackground(.hidden)
                                    .frame(height: 100)
                                    .padding(.leading, width * 0.05)
                                    .overlay {
                                        VStack {
                                            HStack {
                                                if bio.isEmpty {
                                                    Text("Bio")
                                                        .foregroundColor(.gray)
                                                        .font(.system(size: 16))
                                                        .zIndex(1)
                                                        .padding(.top, 8)
                                                        .padding(.leading, 24)
                                                }
                                                
                                                Spacer()
                                            }
                                            Spacer()
                                        }
                                    }
                                    .padding(.top, -8)
                                    .frame(width: width * 0.63)
                            }
                        }
                        
                        Rectangle()
                            .frame(width: width * 0.95, height: 0.7)
                            .foregroundColor(.gray)
                            .opacity(0.3)
                        
                        HStack {
                            HStack {
                                Text("Location")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 16))
                                Spacer()
                            }
                            .frame(width: width * 0.22)
                            
                            HStack {
                                TextField("", text: $location)
                                    .font(.system(size: 16))
                                    .placeholder(when: location.isEmpty) {
                                        Text("Location").foregroundColor(.gray)
                                            .font(.system(size: 16))
                                    }
                                    .foregroundColor(.white)
                                    .padding(.leading, width * 0.05)
                                
                                Spacer()
                            }
                            .frame(width: width * 0.63)
                        }
                    }
                    .padding(.horizontal, width * 0.05)
                    .padding(.top, 24)
                    
                    Spacer()
                }
                .padding(.top, UIScreen.main.bounds.height * 0.08)
            }
        }
    }
}

#Preview {
    EditProfile()
}
