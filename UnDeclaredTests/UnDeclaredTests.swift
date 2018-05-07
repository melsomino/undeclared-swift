//
//  UnDeclaredTests.swift
//  Unified Declaration Unit Tests
//
//  Created by Michael Vlasov on 26.04.2018.
//  Copyright © 2018 Michael Vlasov. All rights reserved.
//

import XCTest
@testable import UnDeclared

class UniTests: XCTestCase {
	
	private func test(_ source: String, expected: String? = nil) {
		do {
			let elements = try DeclarationParser.parse(string: source)
			let actual = String(declaration: elements).trimmingCharacters(in: .newlines)
			XCTAssertEqual(expected ?? source, actual)
		} catch {
			XCTFail(String(describing: error))
		}
	}
	
	
	func testDeclarationParser() throws {
		test("element a=A  b=B\tc=C", expected: "element a=A b=B c=C")
		test("a")
		test("a=A b c=(1 2 3)")
		test("a=A\r\n\tb=B")
		test("a=A\r\n\t~ b=B\r\n\tc=C\r\nd=D", expected: "a=A b=B\r\n\tc=C\r\nd=D")
		test("a='A\\r\\n\\t\\\\B'", expected: "a=`A\r\n\t\\B`")
		test("'\\x09\\u0009'", expected: "`\t\t`")
		test("`\t\r\n`")
	}
}

