//
//  main.swift
//  SelectionSort
//
//  Created by 노민경 on 2022/04/27.
//

import Foundation

let sampleArray = [4, 7, 9, 2, 3, 5, 6, 1, 8]

func selectionSort(array: [Int]) -> [Int] {
    var index: Int
    var array: [Int] = array
    
    for i in 0..<array.count { // 최솟값이 놓일 인덱스를 찾음
        var min: Int = array[i]
        index = i
        
        for j in (i + 1)..<array.count { // 최솟값을 구한 후 배열 중 다시 최솟값을 찾음
            if min > array[j] {
                min = array[j]
                index = j // 최솟값을 찾았다면 배열에서 해당 최솟값의 index를 저장
            }
        }
        
        array.swapAt(i, index) // 해당값과 찾은 index를 swap
    }
    
    return array
}

print(selectionSort(array: sampleArray))

