//
//  TopicModel.swift
//  TezTop
//
//  Created by MacBook on 1/11/21.
//  Copyright © 2021 Javohir Yakubov. All rights reserved.
//

import Foundation

struct TopicModel {
    var title: String
    var quizList: [QuizModel]
}

struct QuizModel {
    let quiz: String
}
