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
    let ingredients: [String] = mockIngredients()
    
    static func mockSteps() -> [String] {
        return [
            "Coupez des champignons",
            "Lavez les champignons",
            "Mangez les champignons",
            "Épluchez les oignons",
            "Pelez les courgettes et mangez-les avec rapidité",
            "Mettez le rôti à rôtir comme c'est un rôti",
            "Goûtez un peu à tout, ça devrait être trop bon et fondre sous la langue",
            "Mangez, mangez, n'oubliez pas de boire de l'eau pour toujours vous hydrater, c'est très important de rester hydraté.",
            "Ensuite, mangez un bon dessert, cmme de la mousse au chocolat par exemple. Voire, un excellent tiramisu absolument succulent."
        ]
    }
    
    static func mockIngredients() -> [String] {
        return [
            "2 oeufs",
            "20 champignons",
            "160g de farine",
            "Sel",
            "Poivre",
            "20 Céleri",
            "1 Rôti de boeuf",
            "180g de mascarpone",
            "200mL de lait"
        ]
    }
}
