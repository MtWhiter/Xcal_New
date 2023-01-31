//
//  ToDoList.swift
//  XCal
//
//  Created by Sirilux  oksuk on 29/1/2566 BE.
//

import SwiftUI

struct ToDoList: View {     
    @State private var toDoItems = ["Wake up"]
    @State private var newItem = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                
                Text("To Do List")
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
                
                HStack {
                    TextField("Add new item", text: $newItem)
                    Button(action: {
                        self.toDoItems.append(self.newItem)
                        self.newItem = ""
                    }) {
                        Image(systemName: "plus")
                    }
                }
                .padding()
                
                List {
                    ForEach(toDoItems, id: \.self) { item in
                        HStack {
                            Text(item)
                            Spacer()
                            Button(action: {
                                self.toDoItems.removeAll(where: { $0 == item })
                            }) {
                                Image(systemName: "trash")
                            }
                        }
                    }
                    .onDelete(perform: delete)
                }
            }
        }
    }
    
    func delete(at offsets: IndexSet) {
        toDoItems.remove(atOffsets: offsets)
    }
    
    struct ToDoList__Previews: PreviewProvider {
        static var previews: some View {
            ToDoList()
        }
    }
}

