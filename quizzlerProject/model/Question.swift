//
//  Question.swift
//  quizzlerProject
//
//  Created by Mitali Gupta on 04/09/23.
//

import Foundation


struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
