//
//  Stack.swift
//  DataStructures
//
//  Created by Trufla on 8/18/19.
//  Copyright © 2019 Trufla. All rights reserved.
//

import Foundation

struct Stack<Element: Equatable>: Equatable {
    
    private var storage: [Element]

    //empty
    var isEmpty: Bool {
        return peak() == nil
    }
    
    init() {
        storage = []
    }
    
    init(_ elements: [Element]) {
        storage = elements
    }
    
    //peak
    func peak() -> Element? {
        return storage.last
    }
    //Push
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    //pop
    @discardableResult
    mutating func pop() -> Element? {
        return storage.popLast()
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        return storage
            .map{"\($0)"}
            .joined(separator: " ")
    }
}

extension Stack: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Element...) {
        storage = elements
    }
}
