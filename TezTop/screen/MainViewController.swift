//
//  MainViewController.swift
//  TezTop
//
//  Created by MacBook on 1/10/21.
//  Copyright © 2021 Javohir Yakubov. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    private lazy var logoImageView: UIImageView = {
        let view = UIImageView.init(image: UIImage.init(named: "logo"))
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var topicsButton: UIButton = {
        let view = UIButton.init()
        view.addTarget(self, action: #selector(onClickTopics), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Fanlar", for: .normal)
        view.setTitleColor(Constants.COLOR_ACCEPT, for: .normal)
        view.layer.cornerRadius = 20
        view.layer.borderColor = Constants.COLOR_ACCEPT.cgColor
        view.layer.borderWidth = 2
        return view
    }()
    
    override func viewDidLoad() {
        view.backgroundColor = Constants.COLOR_PRIMARY_DARK
        
        view.addSubview(logoImageView)
        view.addSubview(topicsButton)
        
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            logoImageView.widthAnchor.constraint(equalToConstant: 100),
            logoImageView.heightAnchor.constraint(equalToConstant: 100),
            
            topicsButton.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 20),
            topicsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            topicsButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
            topicsButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    @objc func onClickTopics(){
        UIApplication.shared.delegate?.window??.rootViewController?.show(TopicsViewController(), sender: nil)
    }
}
