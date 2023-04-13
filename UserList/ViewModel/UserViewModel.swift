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
        let names = ["Frida Nilsson", "Sofie Fröberg", "Malin Henriksson", "Mr.Rune"]
        let emails = ["Frida@icloud.com", "Sofie@icloud.com", "Malin@icloud.com", "Rune@Rune.nu"]
        let descriptions = ["Frida is a 26-year-old app development student who lives in Eskilstuna and is soon moving to Linköping. She's a gamer and music enthusiast who enjoys spending her free time exploring the latest games and tunes. One interesting fact about Frida is that she has a pet cat named Rune, who is also one of the users in our app", "Sofie is a 25-year-old nurse who has been friends with Frida for over 20 years. She lives with her boyfriend Mark and has a horse named Maya", "Malin is a 41-year-old doctor in gender equality, she has a daughter named Emin and Malin is also Frida's sister. Malin lives in Linköping and she loves her work and her family.", "Rune is a spunky 6-year-old cat who shares a home with his owner, Frida. He's full of energy and seems to have the zoomies almost every day. Despite his energetic antics, Rune can be quite mischievous, and he's been known to wake up Frida with a playful slap to the face. However, despite his mischievous tendencies, Rune is also an affectionate and loving cat who enjoys cuddling with Frida whenever he gets the chance."]
        let images = ["frida", "sofie", "malin", "rune"]
        
        
        for i in 0..<names.count {
            let name = names[i]
            let email = emails[i]
            let description = descriptions[i]
            let image = images[i]
            
            let user = User(name: name, email: email, image: image, description: description)
            users.append(user)
        }
    }
}
