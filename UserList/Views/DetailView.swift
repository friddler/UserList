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
    
    var body: some View {
        VStack{
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
            
            VStack {
                Text(user.description)
                    .font(.subheadline)
                    .frame(width: 380, height: 400, alignment: .top)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                
                Spacer()
            }
            .background(RoundedRectangle(cornerRadius: 20).fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.907)).shadow(radius: 2))
            .padding(.horizontal)
            .padding(.top, 10)
            
            Spacer()
        }
    }
    
    private func setUserInfo(){
        
    }
    
    private func saveUserInfo(){
        
    }
}



struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(user: User(name: "Rune", email: "Rune@Rune.nu", image: "rune", description: "Funny and cool"))
    }
}
