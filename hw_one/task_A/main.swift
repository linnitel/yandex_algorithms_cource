import Foundation

let array = readLine()?.split(separator: Character(" ")).map(String.init).map(Int.init)
let action = readLine()
if array != nil, array?.first != nil, array?.last != nil , array?.first! != nil, array?.last! != nil, array?.count == 2, action != nil {
    let tRoom: Int = array?.first! ?? 0
    let tCond: Int = array?.last! ?? 0
    switch action {
    case "freeze":
        if (tRoom < tCond) {
            print(tRoom)
        }
        else {
            print(tCond)
        }
    case "heat":
        if (tRoom > tCond) {
            print(tRoom)
        }
        else {
            print(tCond)
        }
    case "auto":
        print(tCond)
    default:
        print(tRoom)
    }
}
