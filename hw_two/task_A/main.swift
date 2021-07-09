import Foundation

func isIncreasing(array: [Int?]) -> String {
    var index: Int = 1
    while (index < array.count) {
        if array[index]! <= array[index - 1]! {
            return "NO"
        }
        index += 1
    }
    return "YES"
}

let array = readLine()?.split(separator: Character(" ")).map(String.init).map(Int.init)
if (array != nil) {
    print(isIncreasing(array: array!))
}
