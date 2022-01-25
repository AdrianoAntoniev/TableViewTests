//
//  MainViewController.swift
//  TesteTableView
//
//  Created by Adriano Rodrigues Vieira on 25/01/22.
//

import UIKit

class SplashViewController: UIViewController {
    private let currentScreenFrame: CGRect
    
    init(frame: CGRect) {
        currentScreenFrame = frame
        super.init(nibName: nil, bundle: nil)
        view = SplashView(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) não implementado")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
                                
    }
    
    override func viewDidAppear(_ animated: Bool) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) { [weak self] in
            guard let self = self else { return }
            
            let listViewController = ListViewController(frame: self.currentScreenFrame)            
            let navigation = UINavigationController(rootViewController: listViewController)
            navigation.modalTransitionStyle = .crossDissolve
            navigation.modalPresentationStyle = .fullScreen
            
            self.present(navigation, animated: true)
        }
    }
}


class SplashView: UIView {
    var titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Splash screen!"
        label.textAlignment = .center
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubview(titleLabel)
        
        NSLayoutConstraint.activate(
            [
                titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
                titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
            ]
        )
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) não implementado")
    }
}
