//
//  ThirdScreenViewController.swift
//  Breez Test
//
//  Created by Sultan on 9/11/23.
//

import UIKit
import SnapKit

class ThirdScreenViewController: BaseViewController {
    
    lazy var userTitle: UILabel = {
       let label = UILabel()
       label.text = "Sultan"
       label.font = UIFont.systemFont(ofSize: 17)
       
       return label
   }()
    
    lazy var descriptionTitle: UILabel = {
        let label = UILabel()
        label.text = "Hello world too"
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    var title1 = ""
    var descriptionTitle1 = ""
    
    override func viewDidLoad() {
        super .viewDidLoad()
        view.backgroundColor  = .systemBackground
        
        addTargets()
        setupViews()
        setupConstraints()
        print("title1 : \(title1)" )
        print("descriptionTitle1 : \(descriptionTitle1)" )
        
        userTitle.text = title1
        descriptionTitle.text = descriptionTitle1
    }
    
    override func addTargets() {}
    
    override func setupViews() {
        view.addSubview(userTitle)
        view.addSubview(descriptionTitle)
    }
    
    override func setupConstraints() {
        userTitle.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 100))
            make.leading.trailing.equalToSuperview()
        }
        descriptionTitle.snp.makeConstraints { make in
            make.top.equalTo(userTitle.snp.bottom).offset(flexibleHeight(to: 20))
            make.leading.trailing.equalToSuperview()

        }
    }
    
    
    
}
