//
//  ListView.swift
//  TesteTableView
//
//  Created by Adriano Rodrigues Vieira on 25/01/22.
//

import UIKit

class ListView: UIView {
    lazy var tableView = buildTableView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureTableView(
        withTitle title: String,
        withDelegate delegate: UITableViewDelegate,
        withDataSource datasource: UITableViewDataSource
    ) {        
        tableView.delegate = delegate
        tableView.delegate = delegate
        tableView.register(ListTableViewCell.self, forCellReuseIdentifier: ListTableViewCell.identifier)
        
        tableView.reloadData()
    }    
}

// MARK: - Setup methods

private extension ListView {
    func setup() {
        setupHierarchy()
        setupConstraints()
    }
    
    func setupHierarchy() {
        addSubview(tableView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                tableView.topAnchor.constraint(equalTo: topAnchor, constant: 60),
                tableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
                tableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
                tableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
            ]
        )
    }
}

// MARK: - Build methods

private extension ListView {
    func buildTableView() -> UITableView {
        let table = UITableView(frame: .zero)
        table.translatesAutoresizingMaskIntoConstraints = false
        
        return table
    }
}
