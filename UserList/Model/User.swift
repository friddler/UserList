//
//  User.swift
//  UserList
//
//  Created by Frida Nilsson on 2023-04-13.
//

import Foundation


struct User : Identifiable, Equatable {
    
    var id = UUID()
    var name: String
    var email : String
    var image : URL?
    
    init(name: String, email: String, image: URL?){
        self.name = name
        self.email = email
        self.image = image
    }
    
    
}
