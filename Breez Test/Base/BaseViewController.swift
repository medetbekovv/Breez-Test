//
//  BaseViewController.swift
//  Breez Test
//
//  Created by Sultan on 8/11/23.
//

import UIKit
import SnapKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        addTargets()
        setupViews()
        setupConstraints()
    }
    
    func addTargets() {}
    
    func setupViews() {}
    
    func setupConstraints() {}
    
}
