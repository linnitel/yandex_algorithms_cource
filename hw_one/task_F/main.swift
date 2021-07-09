import Foundation

func tableSizeCounter(array: [Int?]) -> String {
    var tableSize: [Int] = []
    var indexOne = 0
    var minTableSize = 20000000
    var minTableWidth = 1001
    var minTableDepth = 1001
    while (indexOne < 2) {
        var indexTwo = 2
        while indexTwo < 4 {
            tableSize.append(array[indexOne]! + array[indexTwo]!)
            let indexThree = indexOne == 0 ? 1 : 0
            let indexFour = indexTwo == 2 ? 3 : 2
            tableSize.append(max(array[indexThree]!, array[indexFour]!))
            if (minTableSize > tableSize[0] * tableSize[1]) {
                minTableSize = tableSize[0] * tableSize[1]
                minTableWidth = tableSize[0]
                minTableDepth = tableSize[1]
            }
            tableSize.removeAll()
            indexTwo += 1
        }
        indexOne += 1
    }
    return "\(minTableWidth) \(minTableDepth)"
}

let array = readLine()?.split(separator: Character(" ")).map(String.init).map(Int.init)
if (array != nil) {
    if array?.count == 4 {
        print(tableSizeCounter(array: array!))
    }
}
