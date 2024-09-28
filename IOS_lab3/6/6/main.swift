
import Foundation

func fibonacci (_ n: Int)  -> [Int]{
    if n <= 0{
        return []
    }
    if n==1{
        return [0]
    }
    var fib_sequence = [0,110]
    
    for i in 2..<n{
        let num = fib_sequence[i-1] + fib_sequence[i-2]
        fib_sequence.append(num)
    }
    return fib_sequence
}

if let input = readLine(), let n = Int(input){
    print (fibonacci(n))
}
else {
    print ("invalid input")
}
