//
//  main.swift
//  MergeSort
//
//  Created by 노민경 on 2022/04/26.
//

import Foundation

let sampleArray = [4, 7, 9, 2, 3, 5, 6, 1, 8]
 
// 배열을 반으로 나누는 역할
func mergeSort(array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    
    let middle = array.count / 2 // 중간 인덱스를 기준으로 함
    // 나눈 배열을 재귀로 다시 mergeSort로 넘김 => 배열의 길이가 1이면 return 하게 됨
    let leftArray = mergeSort(array: Array(array[0..<middle])) // 왼쪽 배열
    let rightArray = mergeSort(array: Array(array[middle..<array.count])) // 오른쪽 배열
    
    return merge(left: leftArray, right: rightArray)
}

// 배열을 합치는 역할
func merge(left: [Int], right: [Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0
    var sorted = [Int]()
    
    while leftIndex < left.count, rightIndex < right.count {
        if (left[leftIndex] < right[rightIndex]) { // right의 right번째 원소보다 left의 leftIndex번째 원소가 더 작으면
            sorted.append(left[leftIndex]) // 그 원소 나열
            leftIndex += 1 // 다음 원소와 비교
        } else if (left[leftIndex] > right[rightIndex]) { // right의 right번째 원소보다 left의 leftIndex번째 원소가 더 크면
            sorted.append(right[rightIndex]) // 그 원소 나열
            rightIndex += 1 // 다음 원소와 비교
        } else {
            sorted.append(left[leftIndex])
            leftIndex += 1
            sorted.append(right[rightIndex])
            rightIndex += 1
        }
    }
    
    while leftIndex < left.count { // 왼쪽 배열의 요소가 남은 경우
        sorted.append(left[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < right.count { // 오른쪽 배열의 요소가 남은 경우
        sorted.append(right[rightIndex])
        rightIndex += 1
    }
    
    return sorted
}

print(mergeSort(array: sampleArray))


