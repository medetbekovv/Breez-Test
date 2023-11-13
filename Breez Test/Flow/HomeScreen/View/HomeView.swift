//
//  HomeView.swift
//  Breez Test
//
//  Created by Sultan on 8/11/23.
//

import UIKit
import SnapKit

class HomeView: BaseView {
    
     lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        tableView.register(HomeViewTableViewCell.self, forCellReuseIdentifier: "MyCellReuseIdentifier")
        
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
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview()
            make.trailing.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
