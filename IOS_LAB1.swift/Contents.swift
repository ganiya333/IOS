import Cocoa

var firstName: String = "Ganiya"
var lastName: String = "Nursaliyeva"
var age: Int = 19
var birthYear: Int = 2004
let currentYear: Int = 2024
var isStudent: Bool = true
var height: Double = 1.75

age = currentYear - birthYear

var hobby: String = "Piano"
var numberOfHobbies: Int = 4
var favoriteNumber: Int = 7
var isHobbyCreative: Bool = true

var summary: String = """
My name is \(firstName) \(lastName). I am \(age) years old, born in \(birthYear). I am currently a student.
I enjoy \(hobby), which is a creative hobby. I have \(numberOfHobbies) hobbies in total, and my favorite number is \(favoriteNumber).
My height is \(height) meters.
"""
print (summary)
