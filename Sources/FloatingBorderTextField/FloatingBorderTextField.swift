// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct FloatingBorderTextField: View {
    
    let title: String
    @Binding var text: String
    @FocusState var isTyping: Bool
    
    public init(title: String, text: Binding<String>) {
        self.title = title
        self._text = text
    }
    
    public var body: some View {
        ZStack(alignment: .leading) {
            TextField("", text: $text)
                .padding(.leading)
                .frame(height: 50)
                .focused($isTyping)
                .background(isTyping ? .blue : .gray, in: RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 2))
            
            Text(title)
                .padding(.horizontal, 5)
                .background(.white.opacity(isTyping || !text.isEmpty ? 1 : 0))
                .foregroundStyle(isTyping ? .blue : .gray)
                .padding(.leading).offset(y: isTyping || !text.isEmpty ? -27 : 0)
                .onTapGesture {
                    isTyping.toggle()
                }
        }
        .animation(.linear(duration: 0.2), value: isTyping)
    }
    
}
