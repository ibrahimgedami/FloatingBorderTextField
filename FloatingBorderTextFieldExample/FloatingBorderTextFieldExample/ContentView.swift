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
    
    @State private var email = ""
    
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            LazyVGrid(columns: columns, spacing: 20) {
                FloatingBorderTextField(title: "First Name", text: $firstName)
                FloatingBorderTextField(title: "Last Name", text: $lastName)
            }
            .padding()
        }
    }

}

#Preview {
    ContentView()
}

extension String {
    
    var isValidEmail: Bool {
        let emailRegEx = #"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#
        return NSPredicate(format: "SELF MATCHES %@", emailRegEx).evaluate(with: self)
    }

}
