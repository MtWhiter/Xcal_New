//
//  Note.swift
//  XCal
//
//  Created by Sirilux  oksuk on 30/1/2566 BE.
//

import SwiftUI

struct NoteView: View {
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            Text("Quick Note")
                .font(.title)
                .bold()
                .multilineTextAlignment(.center)
                Rectangle()
                .frame(width: 300, height: 290)
                .opacity(0.3)
                .cornerRadius(30)
                .overlay(Text(text).font(.callout)
                    .foregroundColor(.black))
            Spacer()
            TextField("Enter your note", text: $text)
                .padding()
            
            Button(action: {
                // Save the note here
            }) {
                Text("Save")
            }
            .padding()
        }
    }
}

struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView()
    }
}
