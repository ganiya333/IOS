import Foundation

func Students_scores_calculator() {
    var Students_scores: [String: Double] = [:]
    
    print("Enter the number of students: ", terminator: "")
    if let input = readLine(), let num_of_st = Int(input) {
        
        for i in 1...num_of_st {
            print("Enter the name of student \(i): ", terminator: "")
            let name = readLine() ?? "error"
            
            print("score for \(name): ", terminator: "")
            if let scoreInput = readLine(), let score = Double(scoreInput) {
                Students_scores[name] = score
            } else {
                print("error")
                return
            }
        }
        
        // Calculate total, average, max, and min scores
        var total = 0.0
        for score in Students_scores.values {
            total += score
        }
        let avg_score = total / Double(num_of_st)
        let max_score = Students_scores.values.max() ?? 0
        let min_score = Students_scores.values.min() ?? 0
       
        for (name, score) in Students_scores {
            let result = score >= avg_score ? "above" : "below"
            print("\(name): \(score) \(result) average")
        }
        
        print("\nAverage score: \(avg_score)")
        print("Highest score: \(max_score)")
        print("Lowest score: \(min_score)")
        
    } else {
        print("Invalid input.")
    }
}

Students_scores_calculator()
