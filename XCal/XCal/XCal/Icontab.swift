//
//  Icontab.swift
//  XCal
//
//  Created by Sirilux  oksuk on 29/1/2566 BE.
//

import SwiftUI

struct Icontab: View{
    var body: some View{
        TabView{
            Homepage()
                .tabItem{
                    Text("Home")
                    Image(systemName: "house")
                }
            ToDoList()
                .tabItem{
                    Text("To do list")
                    Image(systemName: "note")
                }
            NoteView()
                .tabItem{
                    Text("Quick Note")
                    Image(systemName: "person")
                }
            RecommendedFood()
                .tabItem{
                    Text("Recommended")
                    Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                }
                }
        }
    }


struct Icontab_Previews: PreviewProvider {
    static var previews: some View {
        Icontab()
    }
}
