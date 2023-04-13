//
//  ContentView.swift
//  UserList
//
//  Created by Frida Nilsson on 2023-04-13.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userModel : UserViewModel
    
    var body: some View {
        NavigationView {
            List(userModel.users) { user in
                NavigationLink(destination: DetailView(user: user)) {
                    RowView(user: user)
                }
            }
            .navigationTitle("Users")
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserViewModel())
    }
}

struct RowView : View {
    var user : User
    
    var body: some View {
        HStack{
            Image(user.image)
            .resizable()
            .frame(width: 50, height: 50)
            .cornerRadius(100)

            VStack(alignment: .leading) {
                Text(user.name)
                    .font(.headline)
                Text(user.email)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
