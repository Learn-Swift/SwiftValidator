//
//  PasswordValidation.swift
//  Pingo
//
//  Created by Jeff Potter on 11/13/14.
//  Copyright (c) 2015 jpotts18. All rights reserved.
//

import Foundation

public class PasswordRule : RegexRule {
    
    // Alternative Regexes
    
    // 8 characters. One uppercase. One Lowercase. One number.
    // static let regex = "^(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[a-z]).{8,}$"
    //
    // no length. One uppercase. One lowercae. One number.
    // static let regex = "^(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[a-z]).*?$"
    
    //static let regex = "^(?=.*?[A-Z]).{6,}$"

	/***
	
	^.*(?=.{8,})(?=.*[a-zA-Z])(?=.*\d)(?=.*[!#$%&? "]).*$

	^.*              : Start
	(?=.{8,})        : Length
	(?=.*[a-zA-Z])   : Letters
	(?=.*\d)         : Digits
	(?=.*[!#$%&? "]) : Special characters
	.*$              : End

	*/

	static let regex = "^(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[a-z])(?=.*[!#$%&? \"]).{6,}$"

	public convenience init(message : String = "Must be 8 characters with 1 uppercase") {
        self.init(regex: PasswordRule.regex, message : message)
    }
}