import Foundation

func partsQuantityCounter(metal: Int, blanks: Int, parts: Int) -> Int {
    if metal / blanks < 1 {
        return 0
    }
    else {
        let blanksNum = metal / blanks
        if blanks / parts < 1 {
            return 0
        }
        else {
            let partsNum = blanks / parts * blanksNum
            return partsNum + partsQuantityCounter(metal: metal - parts * partsNum, blanks: blanks, parts: parts)
        }
    }
}

let array = readLine()?.split(separator: Character(" ")).map(String.init).map(Int.init)
if (array != nil) {
    if array?.count == 3 {
        print(partsQuantityCounter(metal: array![0]!, blanks: array![1]!, parts: array![2]!))
    }
}
