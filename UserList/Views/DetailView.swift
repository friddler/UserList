//
//  DetailView.swift
//  UserList
//
//  Created by Frida Nilsson on 2023-04-13.
//

import SwiftUI

struct DetailView: View {
    
    var user : User
    
    var body: some View {
        VStack{
            AsyncImage(url: user.image) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                ProgressView()
            }
            .frame(width: 200, height: 200)
            .cornerRadius(100)
            .padding(.bottom, 20)
            
            Text(user.name)
                .font(.title)
            
            Text(user.email)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Spacer()
        }
        .padding()
        .navigationTitle(user.name)
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(user: User(name: "", email: "", image: nil))
    }
}
