import Foundation

func isPalindrome(_ word: String) -> Bool{
    let chars = CharacterSet.alphanumerics
    let ready_text = word.lowercased().components(separatedBy: chars.inverted).joined()
    
    return ready_text==String(ready_text.reversed())
}


if let input = readLine(){
    let res = isPalindrome(input)
    print (res)
}
else {
    print ("invalid input")
}
