//
//  login.swift
//  XCal
//
//  Created by Sirilux  oksuk on 29/1/2566 BE.
//

import SwiftUI

struct LoginPage: View {
    @State public var username = ""
    @State private var password = ""
    @State private var showError = false
    @State private var errorMessage = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Login")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                VStack(alignment: .leading) {
                    Text("Username")
                        .font(.headline)
                        .padding(.bottom, 8)
                    
                    TextField("Type your username", text: $username)
                        .padding()
                        .background(Color.black.opacity(0.15))
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                VStack(alignment: .leading) {
                    Text("Password")
                        .font(.headline)
                        .padding(.bottom, 8)
                    
                    SecureField("Type your password", text: $password)
                        .padding()
                        .background(Color.black.opacity(0.15))
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                Spacer()
                
                NavigationLink(destination: Icontab()) {
                    Text("Login")
                } .navigationBarBackButtonHidden(true)
            }
        }
    }
    
    struct LoginPage_Previews: PreviewProvider {
        static var previews: some View {
            LoginPage()
        }
    }
}



