//
//  UserListApp.swift
//  UserList
//
//  Created by Frida Nilsson on 2023-04-13.
//

import SwiftUI

@main
struct UserListApp: App {
    
    @StateObject var user = UserViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(user)
        }
    }
}
