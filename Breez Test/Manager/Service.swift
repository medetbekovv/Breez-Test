//
//  Service.swift
//  Breez Test
//
//  Created by Sultan on 9/11/23.
//

import UIKit

class Service {
    
    static let shared = Service()
    
    func fetchUsers(completion: @escaping ([User]?, Error?) -> Void) {
        let url = URL(string: "https://jsonplaceholder.typicode.com/users")!
        
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            
            if let error = error {
                completion(nil, error)
                return
            }
            
            if let data = data {
                do {
                    let users = try JSONDecoder().decode([User].self, from: data)
                    completion(users, nil)
                } catch {
                    completion(nil, error)
                }
            }
        }
        task.resume()
    }
    
//    func fetchUsers2(completion: @escaping ([Users2]?, Error?) -> Void) {
//        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
//
//        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
//
//            if let error = error {
//                completion(nil, error)
//                return
//            }
//
//            if let data = data {
//                do {
//                    let posts = try JSONDecoder().decode([Users2].self, from: data)
//                    completion(posts, nil)
//                    print(posts)
//                } catch {
//                    completion(nil, error)
//                    print(error)
//                }
//            }
//        }
//        task.resume()
//    }
    
  

        func fetchPosts(for userId: Int, completion: @escaping ([Users2]?, Error?) -> Void) {
            let urlString = "https://jsonplaceholder.typicode.com/posts?userId=\(userId)"
            guard let url = URL(string: urlString) else {
                completion(nil, NSError(domain: "Invalid URL", code: 0, userInfo: nil))
                return
            }

            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let error = error {
                    completion(nil, error)
                    return
                }

                if let data = data {
                    do {
                        let posts = try JSONDecoder().decode([Users2].self, from: data)
                        completion(posts, nil)
                    } catch {
                        completion(nil, error)
                    }
                }
            }
            task.resume()
        }
    
}
    

