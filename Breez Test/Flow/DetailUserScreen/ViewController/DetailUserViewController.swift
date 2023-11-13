//
//  DetailUserViewController.swift
//  Breez Test
//
//  Created by Sultan on 9/11/23.
//

import UIKit
import SnapKit

class DetailUserViewController: BaseViewController {
    
    let contentView = DetailUserView()
    
    let viewModel = DetailViewModel()
    
    var name = ""
    var userName = ""

    var id = 0
    
    
    override func viewDidLoad() {
        super .viewDidLoad()
        view.backgroundColor = .systemBackground
        addTargets()
        setupViews()
        setupConstraints()
        contentView.tableView.dataSource = self
        contentView.tableView.delegate = self
        title = "\(name) \(userName)"
        print(id)
        fetchUsers2()
        
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
    
    func fetchUsers2() {
        viewModel.fetchUsers2(for: id) { [weak self] in
            DispatchQueue.main.async {
                self?.contentView.tableView.reloadData()
            }

        }
    }
    
}
extension DetailUserViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.users2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DetailViewTableViewCell
        let user2 = viewModel.users2[indexPath.row]
        cell.id.text = String(user2.id)
        cell.title.text = user2.title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = ThirdScreenViewController()
        let user = viewModel.users2[indexPath.row]

        vc.title1 = user.title
        vc.descriptionTitle1 = user.body
//        vc.email = user.email
//        vc.city = user.address.city
//        vc.zipCode = user.address.zipcode
//        vc.companyName = user.company.name
        
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
