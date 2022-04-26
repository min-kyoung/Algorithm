//
//  main.swift
//  QuickSort
//
//  Created by 노민경 on 2022/04/26.
//

import Foundation

let sampleArray = [4, 7, 9, 2, 3, 5, 6, 1, 8]

func quickSort(array: [Int]) -> [Int] {
    guard array.count > 1 else { return array } // 배열이 비어있거나 하나만 있는 경우는 이미 정렬된 상태이므로 원소의 개수가 2개 이상일 경우를 정렬한다.
    
    let pivot = array[array.count / 2] // 피봇의 기준을 배열의 중간 원소로 잡는다.
    let less = array.filter { $0 < pivot } // 피봇보다 같거나 작은 수들을 less 에 담는다.
    let equal = array.filter { $0 == pivot } // 피봇과 같은 수를 equal에 담는다.
    let greater = array.filter { $0 > pivot } // 피봇보다 같거나 큰 수들을 greater 에 담는다.
    
    return quickSort(array: less) + equal + quickSort(array: greater) // 위의 과정을 반복한다.
}

print(quickSort(array: sampleArray))
