import Foundation

let a = Int(readLine()!)
let b = Int(readLine()!)
let c = Int(readLine()!)
if a != nil && b != nil && c != nil {
    if b == 0 && a == 0 && c == 0 {
        print("MANY SOLUTIONS")
    }
    else {
        if a != 0 {
            if c! < 0 {
                print("NO SOLUTION")
            }
            else {
                let x = (c! * c! - b!) / a!
                let leftPart = a! * x + b!
                if leftPart >= 0 && leftPart == c! * c! {
                    print(x)
                }
                else {
                    print("NO SOLUTION")
                }
            }
        }
        else {
            if c! * c! == b! {
                print("MANY SOLUTIONS")
            }
            else {
                print("NO SOLUTION")
            }
        }
    }
}
