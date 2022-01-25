//
//  DetailsViewController.swift
//  TesteTableView
//
//  Created by Adriano Rodrigues Vieira on 25/01/22.
//

import UIKit

class DetailsViewController: UIViewController {
    let dev: Dev
    
    init(dev: Dev) {
        self.dev = dev
        super.init(nibName: nil, bundle: nil)
        
        view = DetailsView(name: dev.name, description: dev.description)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

