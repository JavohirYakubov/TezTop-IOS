//
//  TopicsTableView.swift
//  TezTop
//
//  Created by MacBook on 1/11/21.
//  Copyright © 2021 Javohir Yakubov. All rights reserved.
//

import Foundation
import UIKit

class TopicsTableView: UITableView {
    var items: [TopicModel]?{
        didSet{
            reloadData()
        }
    }
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        
        backgroundColor = .clear
        register(TopicTableViewCell.self, forCellReuseIdentifier: "cell")
        
        dataSource = self
        delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension TopicsTableView: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TopicTableViewCell else {
            return UITableViewCell.init()
        }
        cell.item = items?[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}

