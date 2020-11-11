//
//  RecipeData.swift
//  Mes Recettes
//
//  Created by Eric Le Maître on 11/11/2020.
//

struct RecipeData {
    let recipes: [Recipe]
    
    static func mockRecipes() -> [Recipe] {
        return [
            Recipe(name: "Burger", description: "A good burger", imageName: "burger"),
            Recipe(name: "Fish", description: "Fish is the best", imageName: "fish"),
            Recipe(name: "Salad", description: "Salad is good for your health", imageName: "salad"),
            Recipe(name: "Pasta", description: "Pasta is very easy to cook", imageName: "pasta"),
            Recipe(name: "Macaron", description: "Macaron is french", imageName: "macaron"),
            Recipe(name: "Tiramisu", description: "Tiramisu is the best dessert EVER", imageName: "tiramisu")
        ]
    }
}
