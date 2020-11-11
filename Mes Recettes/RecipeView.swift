//
//  RecipeView.swift
//  Mes Recettes
//
//  Created by Eric Le Maître on 11/11/2020.
//

import SwiftUI

struct RecipeView: View {
    let recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 20) {
                Image(recipe.imageName)
                    .resizable()
                    .frame(maxWidth: 150, maxHeight: 150)
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                    .cornerRadius(10)
                Text(recipe.description)
                    .font(.headline)
                    .lineLimit(7)
                Spacer()
            }
            .padding()
            
            VStack(alignment: .leading) {
                ForEach(0 ..< recipe.steps.count) { i in
                    Text("\(i+1). " + recipe.steps[i])
                        .font(.body)
                    Divider()
                }
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .navigationTitle(recipe.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: RecipeData.mockRecipes()[0])
    }
}
