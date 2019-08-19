//
//  ChallengeTestCase.swift
//  DataStructuresTests
//
//  Created by Trufla on 8/19/19.
//  Copyright © 2019 Trufla. All rights reserved.
//

import XCTest
@testable import DataStructures

class ChallengeTestCase: XCTestCase {
    func checkParentheses(_ string: String) -> Bool {
        var stack = Stack<Character>()
        for char in string {
            if char == "(" {
                stack.push(char)
            } else if char == ")" {
                if stack.isEmpty {
                    return false
                } else {
                    stack.pop()
                }
            }
        }
        return stack.isEmpty
    }
    func test_checkParentheses() {
        XCTAssertTrue(checkParentheses("()"))
    }
    func test_checkParens1() {
        XCTAssertTrue(checkParentheses("(Hello(world))"))
    }
    func test_checkParens2() {
        XCTAssertFalse(checkParentheses("(Hello(world)("))
    }
    func test_checkParens3() {
        XCTAssertFalse(checkParentheses("((())(meow)))()))"))
    }
}
