//
//  DetailUserView.swift
//  Breez Test
//
//  Created by Sultan on 9/11/23.
//

import UIKit
import SnapKit

class DetailUserView: BaseView {
    
    lazy var tableView: UITableView = {
       let tableView = UITableView()
       tableView.backgroundColor = .clear
       tableView.separatorStyle = .none
       tableView.register(DetailViewTableViewCell.self, forCellReuseIdentifier: "cell")
       
       return tableView
   }()
    

    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        setupViews()
        setupConstraints()
    }
        
    override func setupViews() {
        
        addSubview(tableView)
        
    }
    override func setupConstraints() {
        
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        setupViews()
        setupConstraints()
    }
    
}
