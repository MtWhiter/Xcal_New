//  Homepage.swift
//  XCal
//
//  Created by Sirilux  oksuk on 29/1/2566 BE.
//

import Foundation
import SwiftUI

struct Homepage: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.gray
                    .opacity(0.32)
                    .ignoresSafeArea()
            
                VStack{
                    WelcomeMainText()
                    WelcomeSubText()
                    
                    Image("Profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 4))
                    .frame(width: 500)
                    Text("MEAL FOR TODAY")
                    .padding()
                    
                    Picture_Option()
                    
                    ExtraPopup()
                    Spacer()
                  }
                }
            }
        }
    }



struct Homepage_Preview: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}


struct WelcomeMainText: View {
    var body: some View {
        HStack{
            Text("Tuesday, 31 January")
                .font(.headline)
                .padding(.horizontal)
                .offset(y: 15)
        }
    }
}

struct WelcomeSubText: View {
    var body: some View {
        HStack{
            Text("Hello, user!")
                .font(.largeTitle)
                .padding(.horizontal)
                .offset(y: 10)
        }
    }
}

struct FactorProtein: View {
    var body: some View {
        HStack{
            Spacer()
                .frame(width: 150)
            Text("PROTEIN")
                .padding(.horizontal)
                .offset(x: 19, y:70)
            Rectangle()
                .frame(width: 100, height: 20)
                .cornerRadius(10)
                .offset(x: 6, y: 70)
        }
    }
}

struct Picture_Option: View {
    var body: some View {
        HStack{
            Spacer(minLength: 200)
            VStack{
                Rectangle()
                    .stroke(.black, lineWidth: 3)
                    .frame(width: 200, height: 150)
                    .cornerRadius(20)
                    .overlay(Image("Salmonsteak").resizable())
                Rectangle()
                    .foregroundColor(.white)
                    .shadow(radius: 10)
                    .frame(width: 200, height: 100)
                    .offset(y:-20)
                    .overlay(VStack{Text("Breakfast").font(.title); Text("Salmonsteak").font(.headline).opacity(0.6); Spacer()})
            }
            
            VStack{
                Rectangle()
                    .frame(width: 200, height: 150)
                    .cornerRadius(40)
                    .overlay(Image("Porksteak").resizable())
                Rectangle()
                    .foregroundColor(.white)
                    .shadow(radius: 10)
                    .frame(width: 200, height: 100)
                    .offset(y:-20)
                    .overlay(VStack{Text("Lunch").font(.title); Text("Porksteak").font(.headline).opacity(0.6); Spacer()})
            }
            Spacer()
                .frame(width: 200)
        }
    }
}

struct ExtraPopup: View {
    var body: some View {
        VStack{
            Rectangle()
                .strokeBorder(.black, lineWidth: 3)
                .frame(width: 370, height: 210)
                .cornerRadius(10)
                .overlay(VStack{Text("Your Next Mission").font(.headline).fontWeight(.thin); Text("Get a Good sleep").font(.title)})
        }
    }
}
