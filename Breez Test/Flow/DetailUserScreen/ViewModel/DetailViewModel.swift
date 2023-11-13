//
//  DetailViewModel.swift
//  Breez Test
//
//  Created by Sultan on 9/11/23.
//

import UIKit

class DetailViewModel {
   
    var  users2: [Users2] = []
    
    
//    func fetchUsers2(completion: @escaping () -> Void) {
//        Service.shared.fetchUsers2 { [weak self] users2, error in
//            if let error = error {
//                print("Ошибка при получении пользователей: \(error.localizedDescription)")
//            } else if let users2 = users2 {
//                self?.users2 = users2
//                print(users2)
//            }
//            completion()
//        }
//    }
    
  

        func fetchUsers2(for userId: Int, completion: @escaping () -> Void) {
            Service.shared.fetchPosts(for: userId) { [weak self] users2, error in
                if let error = error {
                    print("Error fetching posts: \(error.localizedDescription)")
                } else if let users2 = users2 {
                    self?.users2 = users2
                }
                completion()
            }
        }
}
