import Foundation

let a = Int(readLine()!)
let b = Int(readLine()!)
let c = Int(readLine()!)
let sumOne = a! + b!
let sumTwo = a! + c!
let sumThree = b! + c!
if sumOne > c! && sumTwo > b! && sumThree > a! {
    print ("YES")
}
else {
    print("NO")
}
