//
//  main.swift
//  BubbleSort
//
//  Created by 노민경 on 2022/04/26.
//

import Foundation

let sampleArray = [4, 7, 9, 2, 3, 5, 6, 1, 8]

func bubbleSort(array: [Int]) -> [Int] {
    var arr = array
    
    for i in 0..<(arr.count - 1) { // 8부터 하나씩 내려온다. (1포함 안함 => 2까지 내려온다.)
        var check = true
        for j in 0..<(arr.count - i) - 1 { // 옆 원소랑 비교 => 탐색 요소 - 1 => 탐색하려는 요소의 갯수는 스캔 횟수에 따라 차감된다.
            if arr[j] > arr[j+1] {
                arr.swapAt(j, j+1)
                check = false // swap이 일어나면 check == false
            }
        }
        if check { break } // check == true일 경우, 즉 swap이 일어나지 않으면 뒤에는 정렬되었다는 의미이기 때문에 불필요한 for loop을 돌릴필요 없이 탈출한다.
    }
    return arr
}

print(bubbleSort(array: sampleArray))
