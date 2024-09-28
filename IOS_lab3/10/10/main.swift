
import Foundation

func unique_chars(_ word: String) -> Bool{
    var new_set = Set<Character>()
    for i in word {
        if new_set.contains(i){
            return false
        }
        else {
            new_set.insert(i)
        }
    }
    return true
}
if let input = readLine(){
    print (unique_chars(input))
}
