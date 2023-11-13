//
//  DetailViewTableViewCell.swift
//  Breez Test
//
//  Created by Sultan on 9/11/23.
//

import UIKit

class DetailViewTableViewCell: UITableViewCell {
    
    lazy var id: UILabel = {
       let label = UILabel()
       label.text = "1"
       label.font = UIFont.systemFont(ofSize: 17)
       
       return label
   }()
    
    lazy var title: UILabel = {
       let label = UILabel()
       label.text = "Hello world"
       label.font = UIFont.systemFont(ofSize: 17)
       
       return label
   }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addSubview(id)
        addSubview(title)
    }
    
    private func setupConstraints() {
        id.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 10))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 20))
            make.trailing.equalToSuperview()
        }
        
        title.snp.makeConstraints { make in
            make.top.equalTo(id.snp.bottom).offset(flexibleHeight(to: 5))
            make.leading.equalToSuperview().offset(flexibleHeight(to: 20))
            make.trailing.equalToSuperview()
        }
    }
}
