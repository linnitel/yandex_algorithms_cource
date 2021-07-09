//
//  main.swift
//  yandex_algorithms_cource
//
//  Created by Yuliya Martsenko on 04.06.2021.
//

// Homework one

// Task A

//import Foundation
//
//let array = readLine()?.split(separator: Character(" ")).map(String.init).map(Int.init)
//let action = readLine()
//if array != nil, array?.first != nil, array?.last != nil , array?.first! != nil, array?.last! != nil, array?.count == 2, action != nil {
//    let tRoom: Int = array?.first! ?? 0
//    let tCond: Int = array?.last! ?? 0
//    switch action {
//    case "freeze":
//        if (tRoom < tCond) {
//            print(tRoom)
//        }
//        else {
//            print(tCond)
//        }
//    case "heat":
//        if (tRoom > tCond) {
//            print(tRoom)
//        }
//        else {
//            print(tCond)
//        }
//    case "auto":
//        print(tCond)
//    default:
//        print(tRoom)
//    }
//}


// task B
//import Foundation
//
//let a = Int(readLine()!)
//let b = Int(readLine()!)
//let c = Int(readLine()!)
//let sumOne = a! + b!
//let sumTwo = a! + c!
//let sumThree = b! + c!
//if sumOne > c! && sumTwo > b! && sumThree > a! {
//    print ("YES")
//}
//else {
//    print("NO")
//}

// Task C

//import Foundation
//
//func convertPhoneNumber(num: String) -> String {
//    var newNum: String
//    newNum = num.replacingOccurrences(of: "-", with: "", options: NSString.CompareOptions.literal, range: nil)
//    newNum = newNum.replacingOccurrences(of: "(", with: "", options: NSString.CompareOptions.literal, range: nil)
//    newNum = newNum.replacingOccurrences(of: ")", with: "", options: NSString.CompareOptions.literal, range: nil)
//    if newNum.contains("+7") {
//        newNum = newNum.replacingOccurrences(of: "+7", with: "8")
//    }
//    if newNum.count < 8 {
//        newNum.insert(contentsOf: "8495", at: newNum.startIndex)
//    }
//    return newNum
//}
//
//var phoneNumber = readLine()
//var phoneArray: [String?] = [readLine()!]
//for _ in 1 ... 2 {
//    phoneArray.append(readLine()!)
//}
//if phoneNumber != nil {
//    phoneNumber = convertPhoneNumber(num: phoneNumber!)
//}
//for var num in phoneArray {
//    num = convertPhoneNumber(num: num!)
//    if phoneNumber == num {
//        print("YES")
//    }
//    else {
//        print("NO")
//    }
//}

// Task D

//import Foundation
//
//let a = Int(readLine()!)
//let b = Int(readLine()!)
//let c = Int(readLine()!)
//if a != nil && b != nil && c != nil {
//    if b == 0 && a == 0 && c == 0 {
//        print("MANY SOLUTIONS")
//    }
//    else {
//        if a != 0 {
//            if c! < 0 {
//                print("NO SOLUTION")
//            }
//            else {
//                let x = (c! * c! - b!) / a!
//                let leftPart = a! * x + b!
//                if leftPart >= 0 && leftPart == c! * c! {
//                    print(x)
//                }
//                else {
//                    print("NO SOLUTION")
//                }
//            }
//        }
//        else {
//            if c! * c! == b! {
//                print("MANY SOLUTIONS")
//            }
//            else {
//                print("NO SOLUTION")
//            }
//        }
//    }
//}

// Task E

import Foundation

func floorAndSectionCalculator(targetFlatNum: Int, numOfFloors: Int, oldFlatNum: Int, oldSectionNum: Int, oldFloorNum: Int) -> String {
    let flatsOnFloor = oldFlatNum / ((oldSectionNum - 1) * numOfFloors + oldFloorNum)
    print(flatsOnFloor)
    let targetFloorNum = targetFlatNum / flatsOnFloor + 1
    let targetSectionNum = targetFlatNum / flatsOnFloor / numOfFloors
    return "\(targetSectionNum) \(targetFloorNum)"
}

let array = readLine()?.split(separator: Character(" ")).map(String.init).map(Int.init)
print(floorAndSectionCalculator(targetFlatNum: array![0]!, numOfFloors: array![1]!, oldFlatNum: array![2]!, oldSectionNum: array![3]!, oldFloorNum: array![4]!))


// Task F

//import Foundation
//
//func tableSizeCounter(array: [Int?]) -> String {
//    var tableSize: [Int] = []
//    var indexOne = 0
//    var minTableSize = 20000000
//    var minTableWidth = 1001
//    var minTableDepth = 1001
//    while (indexOne < 2) {
//        var indexTwo = 2
//        while indexTwo < 4 {
//            tableSize.append(array[indexOne]! + array[indexTwo]!)
//            let indexThree = indexOne == 0 ? 1 : 0
//            let indexFour = indexTwo == 2 ? 3 : 2
//            tableSize.append(max(array[indexThree]!, array[indexFour]!))
//            if (minTableSize > tableSize[0] * tableSize[1]) {
//                minTableSize = tableSize[0] * tableSize[1]
//                minTableWidth = tableSize[0]
//                minTableDepth = tableSize[1]
//            }
//            tableSize.removeAll()
//            indexTwo += 1
//        }
//        indexOne += 1
//    }
//    return "\(minTableWidth) \(minTableDepth)"
//}
//
//let array = readLine()?.split(separator: Character(" ")).map(String.init).map(Int.init)
//if (array != nil) {
//    if array?.count == 4 {
//        print(tableSizeCounter(array: array!))
//    }
//}

// Task G

//import Foundation
//
//func partsQuantityCounter(metal: Int, blanks: Int, parts: Int) -> Int {
//    if metal / blanks < 1 {
//        return 0
//    }
//    else {
//        let blanksNum = metal / blanks
//        if blanks / parts < 1 {
//            return 0
//        }
//        else {
//            let partsNum = blanks / parts * blanksNum
//            return partsNum + partsQuantityCounter(metal: metal - parts * partsNum, blanks: blanks, parts: parts)
//        }
//    }
//}
//
//let array = readLine()?.split(separator: Character(" ")).map(String.init).map(Int.init)
//if (array != nil) {
//    if array?.count == 3 {
//        print(partsQuantityCounter(metal: array![0]!, blanks: array![1]!, parts: array![2]!))
//    }
//}

// Task I

//import Foundation
//
//func fitHole(brickOne: Int, brickTwo: Int, hole: [Int]) -> Bool {
//    if (brickOne <= hole[0] && brickTwo <= hole[1]) || (brickOne <= hole[1] && brickTwo <= hole[0]) {
//        return true
//    }
//    return false
//}
//
//func possibleToThrow(brick: [Int], hole: [Int]) -> String {
//    if fitHole(brickOne: brick[0], brickTwo: brick[1], hole: hole) {
//        return "YES"
//    }
//    if fitHole(brickOne: brick[0], brickTwo: brick[2], hole: hole) {
//        return "YES"
//    }
//    if fitHole(brickOne: brick[1], brickTwo: brick[2], hole: hole) {
//        return "YES"
//    }
//    return "NO"
//}
//
//var brick: [Int] = []
//brick.append(Int(readLine()!)!)
//brick.append(Int(readLine()!)!)
//brick.append(Int(readLine()!)!)
//var hole: [Int] = []
//hole.append(Int(readLine()!)!)
//hole.append(Int(readLine()!)!)
//print(possibleToThrow(brick: brick, hole: hole))

// homework 2

// Task A

//import Foundation

//func isIncreasing(array: [Int?]) -> String {
//    var index: Int = 1
//    while (index < array.count) {
//        if array[index]! <= array[index - 1]! {
//            return "NO"
//        }
//        index += 1
//    }
//    return "YES"
//}
//
//let array = readLine()?.split(separator: Character(" ")).map(String.init).map(Int.init)
//if (array != nil) {
//    print(isIncreasing(array: array!))
//}

// Task B

import Foundation


