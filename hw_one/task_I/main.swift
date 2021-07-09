import Foundation

func fitHole(brickOne: Int, brickTwo: Int, hole: [Int]) -> Bool {
    if (brickOne <= hole[0] && brickTwo <= hole[1]) || (brickOne <= hole[1] && brickTwo <= hole[0]) {
        return true
    }
    return false
}

func possibleToThrow(brick: [Int], hole: [Int]) -> String {
    if fitHole(brickOne: brick[0], brickTwo: brick[1], hole: hole) {
        return "YES"
    }
    if fitHole(brickOne: brick[0], brickTwo: brick[2], hole: hole) {
        return "YES"
    }
    if fitHole(brickOne: brick[1], brickTwo: brick[2], hole: hole) {
        return "YES"
    }
    return "NO"
}

var brick: [Int] = []
brick.append(Int(readLine()!)!)
brick.append(Int(readLine()!)!)
brick.append(Int(readLine()!)!)
var hole: [Int] = []
hole.append(Int(readLine()!)!)
hole.append(Int(readLine()!)!)
print(possibleToThrow(brick: brick, hole: hole))
