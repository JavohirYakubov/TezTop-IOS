//
//  TopicTableViewCell.swift
//  TezTop
//
//  Created by MacBook on 1/11/21.
//  Copyright © 2021 Javohir Yakubov. All rights reserved.
//

import Foundation
import UIKit

class TopicTableViewCell: UITableViewCell {
    var item: TopicModel?{
        didSet{
            if let item = item{
                titleLabel.text = item.title
            }
        }
    }
    
    private lazy var containerView: UIView = {
        let view = UIView.init()
        view.layer.backgroundColor = Constants.COLOR_PRIMARY.cgColor
        view.layer.cornerRadius = 8
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var rightImageView: UIImageView = {
        let view = UIImageView.init(image: UIImage.init(named: "right-arrow")?.withTintColor(.white))
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let view = UILabel.init()
        view.font = .boldSystemFont(ofSize: 16)
        view.textColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = .clear
        
        addSubview(containerView)
        containerView.addSubview(rightImageView)
        containerView.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            
            rightImageView.widthAnchor.constraint(equalToConstant: 16),
            rightImageView.heightAnchor.constraint(equalToConstant: 16),
            rightImageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            rightImageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10),
            
            titleLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: rightImageView.leadingAnchor, constant: -10)
        ])
    }
}
