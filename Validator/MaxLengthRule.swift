//
//  MaxLengthRule.swift
//  Validator
//
//  Created by Guilherme Berger on 4/6/15.
//

import Foundation

class MaxLengthRule: Rule {
    
    private var DEFAULT_MAX_LENGTH: Int = 16
    
    init(){}
    
    init(length: Int){
        self.DEFAULT_MAX_LENGTH = length
    }
    
    func validate(value: String) -> Bool {
        return countElements(value) <= DEFAULT_MAX_LENGTH
    }
    
    func errorMessage() -> String {
        return "Must be at most \(DEFAULT_MAX_LENGTH) characters long"
    }
}
