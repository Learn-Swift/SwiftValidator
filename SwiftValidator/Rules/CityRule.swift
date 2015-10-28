//
//  CityRule.swift
//  Pods
//
//  Created by Duc Nguyen on 10/27/15.
//
//

import Foundation

public class CityRule : Rule {

	private var message : String

	public init(message : String = "City name must contains at least 2 and less than 25 characters"){
		self.message = message
	}

	public func validate(value: String) -> Bool {
		let length = value.characters.count
		return length >= 2 && length <= 25
	}

	public func errorMessage() -> String {
		return message
	}
}