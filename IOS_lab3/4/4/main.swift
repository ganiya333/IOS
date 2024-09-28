
import Foundation

func add_item(to list : inout [String]){
    if let item = readLine(), !item.isEmpty {
            list.append(item)
        } else {
            print("Invalid input. Please try again.")
          }
}
func remove_item(from list: inout[String]){
    if let item = readLine(), !item.isEmpty{
        if let index=list.firstIndex(of: item){
            list.remove(at: index)
        }
        else {
            print("already empty")
        }
    }
    if list.isEmpty{
        return
    }
}
func display_list(_ list: [String]){
    if list.isEmpty{
        print("empty")
    }
    else {
        for item in list{
            print(item)
        }
    }
}

func main_menu() {
    var shopping_list: [String] = []
    var temp = true
    
    while temp{
        print ("""
1. Add
2. remove
3. display the current shopping list
4. exit
""")
       
        if let user_input = readLine(), let option = Int (user_input){
            switch option {
            case 1:
                add_item(to: &shopping_list)
            case 2 :
                remove_item(from: &shopping_list)
            case 3:
                display_list(shopping_list)
            case 4:
                temp = false
            default :
                print ("Invalid input")
            }
        }
        else {
            print("invalid input")
        }
    }
    
}
main_menu()
