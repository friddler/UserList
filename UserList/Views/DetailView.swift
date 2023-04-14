//
//  DetailView.swift
//  UserList
//
//  Created by Frida Nilsson on 2023-04-13.
//

import SwiftUI

struct DetailView: View {
    var user : User
    @EnvironmentObject var userModel : UserViewModel
    @State var editDescription : String = ""
    
    var body: some View {
        VStack (alignment: .center){
            Image(user.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 180, height: 180)
                .cornerRadius(100)
                .padding(.bottom, 5)
            
            Text(user.name)
                .font(.title)
            
            Text(user.email)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Spacer()
            
            VStack{
                TextEditor(text: $editDescription)
                    .font(.system(size: 18))
                    .font(.subheadline)
                    .lineLimit(nil)
                    .padding(.horizontal, 10)
                    .onAppear(){
                        editDescription = user.description
                    }
                    .onChange(of: editDescription){ newValue in
                        userModel.updateUserDescription(user: user, description: newValue)
                        
                    }
            }
            .frame(height: 400)
            .background(RoundedRectangle(cornerRadius: 20)
                .fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.907))
                .shadow(radius: 2)
            )
            .padding(.bottom, 25)
            
            .navigationBarItems(trailing: Button(action: saveUserInfo) {
                Text("Save")
            })
            Spacer()
            
        }
    }
    
    
    private func saveUserInfo(){
        userModel.updateUserDescription(user: user, description: editDescription)
    }
}



struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(user: User(name: "Rune", email: "Rune@Rune.nu", image: "rune", description: "Funny and cool, Funny and cool, Funny and cool, Funny and cool, Funny and cool, Funny and cool"))
    }
}
