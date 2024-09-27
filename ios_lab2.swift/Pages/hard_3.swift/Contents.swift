//: [Previous](@previous)

import Foundation

var students : [String: [Int]] = [
    "Ganiya": [95,98,87],
    "Inzhu": [100,70,81],
    "Nuray": [68,100,70]
]
print(students["Inzhu"]?[1])
