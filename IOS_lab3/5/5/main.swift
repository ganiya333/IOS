
import Foundation

func words_counter (sentence : String){
    let chars = CharacterSet.alphanumerics.union(.whitespaces)
    let ready_chars = sentence.lowercased().components(separatedBy:chars.inverted).joined()
    
    let words = ready_chars.split(separator:" ")
    var counter: [String: Int] = [:]
    
    for i in words {
        let string_word = String(i)
        counter[ string_word , default : 0] += 1
    }
    
    for (word, freq) in counter {
        print ("\(word): \(freq)")
    }
    
}


if let sentence = readLine(), !sentence.isEmpty{
    words_counter(sentence: sentence )
}
else {
    print ("invalid_input")
}
