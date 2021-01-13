//
//  TopicsViewController.swift
//  TezTop
//
//  Created by MacBook on 1/10/21.
//  Copyright © 2021 Javohir Yakubov. All rights reserved.
//

import Foundation
import UIKit

class TopicsViewController: UIViewController {
    
    private lazy var backButton: UIButton = {
        let view = UIButton.init()
        view.setImage(UIImage.init(named: "back_icon")?.withTintColor(.white), for: .normal)
        view.addTarget(self, action: #selector(onClickBackButton), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var tableView: TopicsTableView = {
        let view = TopicsTableView.init()
        view.items = [
            TopicModel.init(title: "Matematika", quizList: [QuizModel.init(quiz: "")]),
            TopicModel.init(title: "Fizika", quizList: [QuizModel.init(quiz: "")]),
            TopicModel.init(title: "Ingliz tili", quizList: [QuizModel.init(quiz: "")]),
            TopicModel.init(title: "Ona tili", quizList: [QuizModel.init(quiz: "")]),
            TopicModel.init(title: "Tarix", quizList: [QuizModel.init(quiz: "")])
        ]
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        view.backgroundColor = Constants.COLOR_PRIMARY_DARK
        
        view.addSubview(backButton)
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            backButton.widthAnchor.constraint(equalToConstant: 20),
            backButton.heightAnchor.constraint(equalToConstant: 20),
            backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            
            tableView.topAnchor.constraint(equalTo: backButton.bottomAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
    @objc func onClickBackButton(){
        dismiss(animated: true, completion: nil)
    }
}
