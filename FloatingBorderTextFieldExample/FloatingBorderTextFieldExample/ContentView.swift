//
//  ContentView.swift
//  FloatingBorderTextFieldExample
//
//  Created by Ibrahim Gedami on 26/04/2025.
//

import SwiftUI
import FloatingBorderTextField

struct ContentView: View {
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 20) {
            FloatingBorderTextField(title: "First Name", text: $firstName)
            FloatingBorderTextField(title: "Last Name", text: $lastName)
        }
        .padding()
    }
    
}

#Preview {
    ContentView()
}
