//
//  HomeViewController.swift
//  Breez Test
//
//  Created by Sultan on 8/11/23.
//

import UIKit

class HomeViewController: BaseViewController {
    
    let contentView = HomeView()
    
    let viewModel = HomeViewModel()

    
    override func viewDidLoad() {
        super .viewDidLoad()
        view.backgroundColor = .systemBackground

        addTargets()
        setupViews()
        setupConstraints()
        contentView.tableView.delegate = self
        contentView.tableView.dataSource = self
        fetchUsers()
    }
    
    override func addTargets() {}
    
    override func setupViews() {
        view.addSubview(contentView)
    }
    
    override func setupConstraints() {
        contentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    func fetchUsers() {
            viewModel.fetchUsers { [weak self] in
                DispatchQueue.main.async {
                    self?.contentView.tableView.reloadData()
                }
            }
        }
    
    
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCellReuseIdentifier", for: indexPath) as! HomeViewTableViewCell
        let user = viewModel.users[indexPath.row]
        cell.name.text = user.name
        cell.city.text = user.address.city
        cell.companyName.text = user.company.name
        cell.email.text = user.email
        cell.userName.text = user.username
        cell.zipCode.text = user.address.zipcode
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailUserViewController()
        let user = viewModel.users[indexPath.row]

        vc.name = user.name
        vc.userName = user.username
//        vc.email = user.email
//        vc.city = user.address.city
//        vc.zipCode = user.address.zipcode
//        vc.companyName = user.company.name
        vc.id = user.id
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
