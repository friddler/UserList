//
//  UserViewModel.swift
//  UserList
//
//  Created by Frida Nilsson on 2023-04-13.
//

import Foundation

class UserViewModel : ObservableObject {
    @Published var users = [User]()
    
    init(){
        addMockData()
    }
    
    func addMockData(){
        let names = ["Frida Nilsson", "Sofie Fröberg", "Malin Henriksson"]
        let emails = ["Frida@icloud.com", "Sofie@icloud.com", "Malin@icloud.com"]
        let imageNames = ["frida", "sofie", "malin"]
        
        for i in 0..<names.count {
            let name = names[i]
            let email = emails[i]
            let imageName = imageNames[i]
            let imageUrl = getImageUrl(for: imageName)
            
            let user = User(name: name, email: email, image: imageUrl)
            users.append(user)
        }
        
        func getImageUrl(for imageName: String) -> URL? {
            if let imageUrl = Bundle.main.url(forResource: imageName, withExtension: "jpeg"){
                return imageUrl
            }
            return nil
        }
    }
}
