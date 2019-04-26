//
//  Question.swift
//  Quiz App
//
//  Created by amin on 1/27/19.
//  Copyright © 2019 amin. All rights reserved.
//

import Foundation

class Question{
    var questionTitle:String = ""
    var answer : Bool = true
    
    init(text:String,ans:Bool) {
        questionTitle = text
        answer = ans
    }
    
}
