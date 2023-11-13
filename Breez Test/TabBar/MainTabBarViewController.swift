//
//  MainTabBarViewController.swift
//  Breez Test
//
//  Created by Sultan on 8/11/23.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        
        
        vc1.title = "Home"
        
        tabBar.tintColor = .label

        
        setViewControllers([vc1], animated: true)


    }
    
}
