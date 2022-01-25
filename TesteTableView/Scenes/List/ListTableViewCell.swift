//
//  ListTableViewCell.swift
//  TesteTableView
//
//  Created by Adriano Rodrigues Vieira on 25/01/22.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    static let identifier = String(describing: self)
    
    func setup(with cellText: String) {
        textLabel?.text = cellText            
    }
}
