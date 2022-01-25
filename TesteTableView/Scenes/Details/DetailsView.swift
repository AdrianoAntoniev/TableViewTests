//
//  DetailsView.swift
//  TesteTableView
//
//  Created by Adriano Rodrigues Vieira on 25/01/22.
//

import UIKit

class DetailsView: UIView {
    private lazy var nameLabel = buildLabel(withFontSize: 40)
    private lazy var descriptionLabel = buildLabel(withFontSize: 20)
    
    init(name: String, description: String) {
        super.init(frame: .zero)
        backgroundColor = .white
        
        nameLabel.text = name
        descriptionLabel.text = description
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Setup

private extension DetailsView {
    func setup() {
        setupHierarchy()
        setupConstraints()
    }
    
    func setupHierarchy() {
        addSubview(nameLabel)
        addSubview(descriptionLabel)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -100),
                nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
                nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
                
                descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 30),
                descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
                descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
            ]
        )
    }
}

// MARK: - Build methods

private extension DetailsView {
    func buildLabel(withFontSize fontSize: CGFloat) -> UILabel {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: fontSize)
        label.textAlignment = .center
        
        return label
    }
}

