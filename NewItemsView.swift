//
//  NewItemsView.swift
//  ToDoListApp
//
//  Created by Keegan Henning on 9/13/24.
//

import SwiftUI

struct NewItemsView: View {
    @StateObject var viewModel = NewItemsViewViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack{
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 100)
            
            Form{
                //title
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                //due date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                //button
                TLButton(title: "Save", background: .pink) {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                }
                .padding()
                
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(title: Text("Error"),
                      message: Text("Please fill in all fields and select due date that is today or newer."))
            }
        }
    }
}

struct NewItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemsView(newItemPresented: Binding(get: {
            return true
        }, set: { _ in}))
    }
}
