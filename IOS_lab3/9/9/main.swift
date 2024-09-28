import Foundation
//calculating functions
func add (_ num1: Double, _ num2: Double) -> Double {
    return num1 + num2
}
func subtract (_ num1: Double, _ num2: Double) -> Double {
    return num1 - num2
}
func multiplication (_ num1: Double, _ num2: Double) -> Double {
    return num1 * num2
}
func division (_ num1: Double, _ num2: Double) -> Double? {
    if num2 == 0{
        return nil
    }
    return num1 / num2
}
 
func calculator (){
    while true{
        guard let input1 = readLine(), let num1 = Double(input1) else {
            print ("Invalid ")
            continue
        }
        guard let input2 = readLine(), let num2 = Double(input2) else {
            print ("Invalid input")
            continue
        }
        guard let operation = readLine() else {
            print ("Invalid Operation")
            continue
        }
        
        var res : Double?
        
        switch operation{
            
        case "+":
            res = add(num1, num2)
        case "-":
            res = subtract(num1, num2)
        case "*":
            res = multiplication(num1,num2)
        case "/":
            res = division(num1, num2)
            if res == nil{
                print ("Division by 0")
                continue
            }
        default:
            print ("invalid operation")
            continue
        }
        if let Result = res {
            print (Result)
        }
        print ("continue?")
        
        if let another_input = readLine(), another_input != "yes"{
            print ("exit")
            break
        }
        
    }
    
}
calculator()

