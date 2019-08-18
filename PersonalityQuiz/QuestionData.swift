//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Chislaine Cruz on 8/17/19.
//  Copyright © 2019 Chislaine Cruz. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", monkey = "🐒", lion = "🦁", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing. You surround yourself with people you love and enjoy activities with your friends"
            
        case .lion:
            return "You a beast! You are highly competitive and love to be the life of the party. Keep roaring!"
        
        case .monkey:
            return "You love being surrounded by family and friends. You have great sense of humor and you feel it is your duty to entertain others even if they don't share your type of humor. You have a great heart and care deeply for the people close to you"
        
        case .turtle:
            return "You do things independently on your own time. You know you're not on a race and decide to do things well and don't like to feel rushed. You have a few friends which are very close to you and you care for deeply. Quality over quantity!"
        }
    }
}
