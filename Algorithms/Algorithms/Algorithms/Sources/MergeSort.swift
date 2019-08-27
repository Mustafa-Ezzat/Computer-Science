//
//  MergeSort.swift
//  Algorithms
//
//  Created by Trufla on 8/21/19.
//  Copyright © 2019 Trufla. All rights reserved.
//

import Foundation

class MergeSort {
    func mergeSort<Element: Comparable>(_ array: [Element]) -> [Element] {
        guard array.count > 1 else {
            return array
        }
        let middle = array.count / 2
        let left = mergeSort(Array(array[0..<middle]))
        let right = mergeSort(Array(array[middle...]))
        return merge(left, right: right)
    }
    
    func merge<Element: Comparable>(_ left: [Element], right: [Element]) -> [Element] {
        var result: [Element] = []
        var leftIndex = 0
        var rightIndex = 0
        
        while leftIndex < left.count && rightIndex < right.count {
            let leftElement = left[leftIndex]
            let rightElement = right[rightIndex]
            if leftElement < rightElement {
                result.append(leftElement)
                leftIndex += 1
            } else if leftElement > rightElement {
                result.append(rightElement)
                rightIndex += 1
            } else {
                result.append(leftElement)
                leftIndex += 1
                result.append(rightElement)
                rightIndex += 1
            }
        }
        if leftIndex < left.count {
            result.append(contentsOf: left[leftIndex...])
        }
        if rightIndex < right.count {
            result.append(contentsOf: right[rightIndex...])
        }
        
        return result
    }
}
