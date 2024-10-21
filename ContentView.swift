//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Keegan Henning on 9/13/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserID.isEmpty{
            //signed in
            accountView
        }else{
            LogInView()
            }
        }
    
    
    @ViewBuilder
    var accountView: some View{
        TabView{
            ToDoListView(userID: viewModel.currentUserID)
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem{
                    Label("Profile", systemImage: "person.circle")
                }
            
        }
    }
    
    
    }

struct ContentView_Previews: PreviewProvider{
    static var previews: some View {
        ContentView()
    }
}
