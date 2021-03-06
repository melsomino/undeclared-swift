//
//  DeclarationElement.swift
//  Unified Declaration Library
//
//  Created by Michael Vlasov on 06.05.2018.
//  Copyright © 2018 Michael Vlasov. All rights reserved.
//

import Foundation

public struct DeclarationElement {
	public let attributes: [DeclarationAttribute]
	public let children: [DeclarationElement]
	
	public init(attributes: [DeclarationAttribute], children: [DeclarationElement]) {
		self.attributes = attributes
		self.children = children
	}
	
}
