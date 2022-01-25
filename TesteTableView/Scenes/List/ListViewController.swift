//
//  ListViewController.swift
//  TesteTableView
//
//  Created by Adriano Rodrigues Vieira on 25/01/22.
//

import UIKit

class ListViewController: UIViewController {
    private let currentScreenFrame: CGRect
    private lazy var listView = ListView(frame: currentScreenFrame)
    
    init(frame: CGRect) {
        self.currentScreenFrame = frame
        super.init(nibName: nil, bundle: nil)
                                        
        listView.tableView.dataSource = self
        listView.tableView.delegate = self
        
        listView.tableView.register(ListTableViewCell.self, forCellReuseIdentifier: ListTableViewCell.identifier)
        view = listView
        
        title = "Alguns Devs iOS "
                
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Data source and delegate

extension ListViewController: UITableViewDataSource, UITableViewDelegate {
    private var iosDevs: [Dev] {
        [
            Dev(name: "Angela Yu", description: "AppBrewery"),
            Dev(name: "Paul Hudson", description: "Hacking with Swift"),
            Dev(name: "Antoine Van Der Lee", description: "Avanderlee"),
            Dev(name: "John Sundell", description: "Swift by Sundell"),
            Dev(name: "Karol Attekita", description: "Attekita"),
            Dev(name: "Shubham Singh", description: "Shubham Singh"),
            Dev(name: "Emmanuel Okwara", description: "Emmanuel Okwara"),
            Dev(name: "Rodrigo Policante", description: "DevPoli"),
            Dev(name: "Vincent Pradeilles", description: "Vincent Pradeilles")
        ]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return iosDevs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: ListTableViewCell.identifier, for: indexPath) as? ListTableViewCell {
            let dev = iosDevs[indexPath.row]
            cell.setup(with: dev.name)
            return cell
        }
        
        return .init()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailsViewController = DetailsViewController(dev: iosDevs[indexPath.row])
        navigationController?.pushViewController(detailsViewController, animated: true)
    }
}
