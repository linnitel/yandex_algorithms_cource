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
