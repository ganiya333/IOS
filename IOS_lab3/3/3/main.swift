import Foundation
//converting functions
func C_to_F (_ celsius : Double) -> Double{
    return (celsius * 9/5) + 32
}
func C_to_K (_ celsius: Double) -> Double {
    return celsius + 273.15
}
func F_to_C (_ fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5/9
}
func F_to_K (_ fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5/9 + 273.15
}
func K_to_C (_ kelvin: Double) -> Double{
    return kelvin - 273.15
}
func K_to_F (_ kelvin: Double) -> Double {
    return ( kelvin - 273.15) * 9/5 + 32
}
//input from user
guard let input = readLine(), let temp = Double(input) else {
    print ("invalid")
    exit (1)
}

guard let type = readLine() else {
    print ("invalid")
    exit(1)
}

var celsius: Double
var fahrenheit: Double
var kelvin: Double


switch type {
case "C":
    celsius = temp
    fahrenheit = C_to_F(celsius)
    kelvin = C_to_K(celsius)
case "F":
    fahrenheit = temp
    celsius = F_to_C(fahrenheit)
    kelvin = F_to_K(fahrenheit)
case "K":
    kelvin = temp
    celsius = K_to_C(kelvin)
    fahrenheit = K_to_F(kelvin)
default:
    print("Invalid unit. Please enter C, F, or K.")
    exit(1)
}

print (celsius)
print (fahrenheit)
print(kelvin)
