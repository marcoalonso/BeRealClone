//
//  ContentView.swift
//  BeRealClone
//
//  Created by Marco Alonso on 02/09/24.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        Feed()
    }
}

#Preview {
    ContentView()
}
