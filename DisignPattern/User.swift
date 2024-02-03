//
//  User.swift
//  DisignPattern
//
//  Created by hyunho lee on 2024/01/24.
//

import Foundation

class UserManager: ObservableObject {
    static let shared = UserManager()
    
    private init() {}
    
    @Published var user: User = User(name: "리이오", money: 0, youtube: "")
}

struct User {
    var name: String
    var money: Int
    var youtube: String
}
