//
//  ViewController.swift
//  HW34
//
//  Created by Jarae on 3/4/23.
//

import UIKit
import SnapKit

class GetRequestPage: UIViewController {

    //MARK: - Variables
    private let images: [UIImage] = [
        UIImage(named: "1")!, UIImage(named: "2")!, UIImage(named: "3")!,
        UIImage(named: "4")!, UIImage(named: "5")!, UIImage(named: "6")!,
        UIImage(named: "7")!, UIImage(named: "5")!, UIImage(named: "6")!,
        UIImage(named: "7")!, UIImage(named: "1")!, UIImage(named: "2")!,
        UIImage(named: "3")!, UIImage(named: "4")!, UIImage(named: "5")!,
        UIImage(named: "6")!, UIImage(named: "7")!, UIImage(named: "5")!,
        UIImage(named: "6")!, UIImage(named: "7")!, UIImage(named: "1")!,
        UIImage(named: "2")!, UIImage(named: "3")!, UIImage(named: "4")!,
        UIImage(named: "5")!, UIImage(named: "6")!, UIImage(named: "7")!,
        UIImage(named: "5")!, UIImage(named: "6")!, UIImage(named: "7")!
    ]
    
    //MARK: - UI Components
    var  data: [Product] = []
    
    private let tableView: UITableView = {
        let tableview = UITableView()
        tableview.backgroundColor = .systemBackground
        tableview.allowsSelection = true
        tableview.register(CustomCell.self, forCellReuseIdentifier: CustomCell.identifier)
        return tableview
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }


    //MARK: - Setup UI
    private func setupUI() {
        tableView.dataSource = self
        tableView.delegate = self
        
        view.backgroundColor = .systemBlue
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.bottom.top.leading.trailing.equalToSuperview()
        }
    }
}

extension GetRequestPage:  UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.identifier, for: indexPath) as? CustomCell else {
            fatalError("error")
        }
        
        let value = data[indexPath.row]
        let image = images[indexPath.row]
        cell.configure(with: value, and: image)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            200
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = GetRequestFullPage() 
        //vc.item = data[indexPath.row]
        vc.configure(with: data[indexPath.row], and: images[indexPath.row])
        self.navigationController?.pushViewController(vc, animated: true)
                    
    }
    
    
}
