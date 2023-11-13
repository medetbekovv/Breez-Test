//
//  HomeViewModel.swift
//  Breez Test
//
//  Created by Sultan on 9/11/23.
//

import UIKit

class HomeViewModel {
    
    var users: [User] = []
    
    func fetchUsers(completion: @escaping () -> Void) {
        Service.shared.fetchUsers { [weak self] users, error in
            if let error = error {
                print("Ошибка при получении пользователей: \(error.localizedDescription)")
            } else if let users = users {
                self?.users = users
            }
            completion()
        }
    }
}

