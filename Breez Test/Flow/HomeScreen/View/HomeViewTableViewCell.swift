//
//  HomeViewTableViewCel.swift
//  Breez Test
//
//  Created by Sultan on 8/11/23.
//

import UIKit
import SnapKit

class HomeViewTableViewCell: UITableViewCell {
    
     lazy var name: UILabel = {
        let label = UILabel()
        label.text = "Sultan"
        label.font = UIFont.systemFont(ofSize: 17)
        
        return label
    }()
    
     lazy var userName: UILabel = {
        let label = UILabel()
        label.text = "Medetbekov"
        label.font = UIFont.systemFont(ofSize: 17)
        
        return label
    }()
    
    
     lazy var email: UILabel = {
        let label = UILabel()
        label.text = "medetbekovs05gmail.com"
        label.font = UIFont.systemFont(ofSize: 17)

        return label
    }()
    
     lazy var city: UILabel = {
        let label = UILabel()
        label.text = "Bishkek"
        label.font = UIFont.systemFont(ofSize: 20)
        
        return label
    }()
    
     lazy var zipCode: UILabel = {
        let label = UILabel()
        label.text = "92998-3874"
        label.font = UIFont.systemFont(ofSize: 20)
        
        return label
    }()
    
     lazy var companyName: UILabel = {
        let label = UILabel()
        label.text = "Breez"
        label.font = UIFont.systemFont(ofSize: 30)
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        setupViews()
        setupConstraints()
      
    }
    
    private func setupViews() {
        addSubview(name)
        addSubview(userName)
        addSubview(email)
        addSubview(city)
        addSubview(zipCode)
        addSubview(companyName)
    }
    
    private func setupConstraints() {
        
        name.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 10))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 20))
            make.trailing.equalToSuperview()
        }
        
        userName.snp.makeConstraints { make in
            make.top.equalTo(name.snp.bottom).offset(flexibleHeight(to: 5))
            make.leading.equalToSuperview().offset(flexibleHeight(to: 20))
            make.trailing.equalToSuperview()
        }
        
        email.snp.makeConstraints { make in
            make.top.equalTo(userName.snp.bottom).offset(flexibleHeight(to: 5))
            make.leading.equalToSuperview().offset(flexibleHeight(to: 20))
            make.trailing.equalToSuperview()
        }
        
        city.snp.makeConstraints { make in
            make.top.equalTo(email.snp.bottom).offset(flexibleHeight(to: 5))
            make.leading.equalToSuperview().offset(flexibleHeight(to: 20))
            make.trailing.equalToSuperview()
        }
        
        zipCode.snp.makeConstraints { make in
            make.top.equalTo(city.snp.bottom).offset(flexibleHeight(to: 5))
            make.leading.equalToSuperview().offset(flexibleHeight(to: 20))
            make.trailing.equalToSuperview()
        }
        
        companyName.snp.makeConstraints { make in
            make.top.equalTo(zipCode.snp.bottom).offset(flexibleHeight(to: 5))
            make.leading.equalToSuperview().offset(flexibleHeight(to: 20))
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
    }
}
