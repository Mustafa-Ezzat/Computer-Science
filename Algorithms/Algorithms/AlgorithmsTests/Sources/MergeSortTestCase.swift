//
//  MergeSortTestCase.swift
//  AlgorithmsTests
//
//  Created by Trufla on 8/21/19.
//  Copyright © 2019 Trufla. All rights reserved.
//

import XCTest
@testable import Algorithms

class MergeSortTestCase: XCTestCase {
    let mergeSort = MergeSort()
    let testArray = [3, 4, 7, -1, 10, 0, 2]
    let sortedArray = [-1, 0, 2, 3, 4, 7, 10]
    
    func test_mergeSort() {
        XCTAssertEqual(mergeSort.mergeSort(testArray), sortedArray)
    }
}
