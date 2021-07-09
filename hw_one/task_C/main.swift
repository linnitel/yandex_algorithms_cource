import Foundation

func convertPhoneNumber(num: String) -> String {
    var newNum: String
    newNum = num.replacingOccurrences(of: "-", with: "", options: NSString.CompareOptions.literal, range: nil)
    newNum = newNum.replacingOccurrences(of: "(", with: "", options: NSString.CompareOptions.literal, range: nil)
    newNum = newNum.replacingOccurrences(of: ")", with: "", options: NSString.CompareOptions.literal, range: nil)
    if newNum.contains("+7") {
        newNum = newNum.replacingOccurrences(of: "+7", with: "8")
    }
    if newNum.count < 8 {
        newNum.insert(contentsOf: "8495", at: newNum.startIndex)
    }
    return newNum
}

var phoneNumber = readLine()
var phoneArray: [String?] = [readLine()!]
for _ in 1 ... 2 {
    phoneArray.append(readLine()!)
}
if phoneNumber != nil {
    phoneNumber = convertPhoneNumber(num: phoneNumber!)
}
for var num in phoneArray {
    num = convertPhoneNumber(num: num!)
    if phoneNumber == num {
        print("YES")
    }
    else {
        print("NO")
    }
}
