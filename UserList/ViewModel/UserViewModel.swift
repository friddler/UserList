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
        users.append(User(name: "Frida Nilsson", email: "Frida@icloud.com", image: "frida", description: "Meet Frida, the 26-year-old mastermind behind the app you love to use. When she's not coding up a storm, you can find her ruling the gaming world and bopping to some sick beats. She's leaving Eskilstuna soon to take over Linköping, but not before introducing you to her trusty sidekick, Rune the cat. Yup, that's right, we've got a feline user on our hands. Get ready to have your mind blown by Frida's tech skills and Rune's paw-some profile."))
        users.append(User(name: "Sofie Fröberg", email: "Sofie@icloud.com", image: "sofie", description: "Meet Sofie - the 25-year-old nurse with a heart of gold and a love for all things equine! She resides in Linköping with her boyfriend Mark, who is either really lucky or really brave to have landed Sofie's heart. When she's not saving lives at work, she's horsing around with Maya, her beloved mare. And let's not forget her bond with Frida, her BFF for over 20 years! With Sofie around, there's sure to be lots of laughter, friendship, and perhaps a few neigh-sayers along the way."))
        users.append(User(name: "Malin Henriksson", email: "Malin@icloud.com", image: "malin", description: "Meet Malin, the 41-year-old gender equality doctor who can diagnose and cure even the toughest cases of sexism. She's got a daughter named Emin, who's as cool as the rapper with the same name, and she's also Frida's sister, which means she's genetically engineered to be awesome. Malin lives in Linköping, where she spreads love, laughter, and equity like a contagious disease. When she's not busy saving the world, she enjoys spending quality time with her family and binge-watching Grey's Anatomy to sharpen her doctoring skills."))
        users.append(User(name: "Mr.Rune", email: "Rune@Rune.nu", image: "rune", description: "Rune is a spunky 6-year-old cat who shares a home with his owner, Frida. He's full of energy and seems to have the zoomies almost every day. Despite his energetic antics, Rune can be quite mischievous, and he's been known to wake up Frida with a playful slap to the face. However, despite his mischievous tendencies, Rune is also an affectionate and loving cat who enjoys cuddling with Frida whenever he gets the chance."))
        users.append(User(name: "Anders Goober Carling", email: "Anders Goober Carling", image: "anders", description: "Introducing Anders, the 28-year-old gamer from Norrtälje who can run faster than his internet connection. He's not just a keyboard warrior though, he also creates epic music that even Mozart would be jealous of. And when he's not saving virtual worlds, he's cooking up a storm in the kitchen, with a pasta carbonara that'll make you cry tears of joy. But that's not all, Anders is also a top-tier uncle, making him the ultimate package deal."))
        
    }
    func updateUserDescription(user: User, description: String){
        if let index = users.firstIndex(where: {$0.name == user.name}) {
            users[index].description = description
        }
        
    }
}



