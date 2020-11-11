//
//  Recipe.swift
//  Mes Recettes
//
//  Created by Eric Le Maître on 11/11/2020.
//

import Foundation

struct Recipe: Identifiable {
    var id = UUID()
    
    let name: String
    let description: String
    let imageName: String
    let steps: [String] = mockSteps()
    
    static func mockSteps() -> [String] {
        return [
            "Coupez des champignons",
            "Lavez les champignons",
            "Mangez les champignons"
        ]
    }
}
