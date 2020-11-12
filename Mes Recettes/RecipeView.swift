//
//  RecipeView.swift
//  Mes Recettes
//
//  Created by Eric Le Maître on 11/11/2020.
//

import SwiftUI

struct IngredientLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: "circle")
                .resizable()
                .frame(width: 10, height: 10)
            configuration.title
                .font(.subheadline)
        }
        .foregroundColor(.gray)
    }
}

struct RecipeView: View {
    let recipe: Recipe
    
    var body: some View {
        ScrollView {
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
                
                HStack(alignment: .top, spacing: 20) {
                    VStack(alignment: .leading, spacing: 2) {
                        ForEach(0 ..< recipe.ingredients.count) { index in
                            if(index % 2 == 0) {
                                Label(recipe.ingredients[index], systemImage: "circle")
                                    .labelStyle(IngredientLabelStyle())
                            }
                        }
                    }
                    VStack(alignment: .leading, spacing: 2) {
                        ForEach(0 ..< recipe.ingredients.count) { index in
                            if(index % 2 == 1) {
                                Label(recipe.ingredients[index], systemImage: "circle")
                                    .labelStyle(IngredientLabelStyle())
                            }
                        }
                    }
                }
                .padding(.horizontal)
                
                VStack(alignment: .leading) {
                    ForEach(0 ..< recipe.steps.count) { i in
                        Text("\(i+1). " + recipe.steps[i])
                            .font(.body)
                        Divider()
                    }
                }
                .padding()
                
                Spacer()
            }
            .navigationTitle(recipe.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: RecipeData.mockRecipes()[0])
    }
}
