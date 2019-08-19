//
//  Queue.swift
//  DataStructures
//
//  Created by Trufla on 8/19/19.
//  Copyright © 2019 Trufla. All rights reserved.
//

import Foundation

protocol Queue {
    associatedtype Element
    mutating func enqueue(_ element: Element)
    mutating func dequeue() -> Element?
    var isEmpty: Bool { get }
    var peak: Element? { get }
}

struct QueueArray<T>: Queue {
    // Space O(n)
    private var array: [T] = []
    var isEmpty: Bool {
        return array.isEmpty
    }
    var peak: T? {
        return array.first
    }
    mutating func enqueue(_ element: T) {
        array.append(element)
    }
    @discardableResult
    mutating func dequeue() -> T? {
        // O(n)
        return isEmpty ? nil : array.removeFirst()
    }
}

struct QueueStack<T>: Queue {
    // Space O(n)
    var enqueueStack: [T] = []
    var dequeueStack: [T] = []

    var isEmpty: Bool {
        return enqueueStack.isEmpty && dequeueStack.isEmpty
    }
    var peak: T? {
        return dequeueStack.isEmpty ? enqueueStack.first : dequeueStack.last
    }
    mutating func enqueue(_ element: T) {
        enqueueStack.append(element)
    }
    @discardableResult
    mutating func dequeue() -> T? {
        if dequeueStack.isEmpty {
            dequeueStack = enqueueStack.reversed()
            enqueueStack.removeAll()
        }
        // O(1)
        return dequeueStack.popLast()
    }
}
