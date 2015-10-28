//
//  FirstnameRule.swift
//  Pods
//
//  Created by Duc Nguyen on 10/27/15.
//
//

import Foundation

public class FirstNameRule : Rule {

	private var message : String

	public init(message : String = "First name must contains at least 2 and less than 25 characters"){
		self.message = message
	}

	public func validate(value: String) -> Bool {
		let lenght = value.characters.count
		return lenght >= 2 && lenght <= 25
	}

	public func errorMessage() -> String {
		return message
	}
}