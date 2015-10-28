//
//  ZipCodeRule.swift
//  Validator
//
//  Created by Jeff Potter on 3/6/15.
//  Copyright (c) 2015 jpotts18. All rights reserved.
//

import Foundation

public class ZipCodeRule: RegexRule {
    
    public convenience init(message : String = "ZipCode must contains at least 2 and less than 10 digits"){
        self.init(regex: "\\d{2,10}", message : message)
    }
}