//: [Previous](@previous)

import Foundation

var set1: Set<String> = ["cat", "dog"]
var set2: Set<String> = ["dog", "mouse"]
var union_set = set1.union(set2)
print(union_set.subtracting(set2))
