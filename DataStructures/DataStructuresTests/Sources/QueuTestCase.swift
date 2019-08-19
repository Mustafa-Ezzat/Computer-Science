//
//  QueuTestCase.swift
//  DataStructuresTests
//
//  Created by Trufla on 8/19/19.
//  Copyright © 2019 Trufla. All rights reserved.
//

import XCTest
@testable import DataStructures

class QueuTestCase: XCTestCase {
    var queueArray = QueueArray<String>()
    var queueStack = QueueStack<String>()
    
    override func setUp() {
        queueArray.enqueue("Pusheen")
        queueArray.enqueue("Keyboard Cat")
        queueArray.enqueue("Lil Bub")
        
        queueStack.enqueue("Milo")
        queueStack.enqueue("Sassy")
        queueStack.enqueue("Ozma")
    }
    
    func test_enqueueArray() {
        XCTAssertEqual(queueArray.peak, "Pusheen")
    }
    func test_enqueueStack() {
        XCTAssertEqual(queueStack.peak, "Milo")
    }
    func test_dequeueArray() {
        queueArray.dequeue()
        queueArray.dequeue()
        XCTAssertEqual(queueArray.peak, "Lil Bub")
        queueArray.dequeue()
        XCTAssertTrue(queueArray.isEmpty)
    }
    func test_dequeueStack() {
        queueStack.dequeue()
        queueStack.dequeue()
        XCTAssertEqual(queueStack.peak, "Ozma")
        queueStack.dequeue()
        XCTAssertTrue(queueStack.isEmpty)
    }

    
}
