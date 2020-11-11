//
//  ContentView.swift
//  Mes Recettes
//
//  Created by Eric Le Maître on 11/11/2020.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            List(RecipeData.mockRecipes()) { recipe in
                NavigationLink(
                    destination: RecipeView(recipe: recipe),
                    label: {
                        VStack {
                            Image(recipe.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                .clipped()
                        }
                        VStack(alignment: .leading) {
                            Text(recipe.name)
                                .font(.title2)
                            Text(recipe.description)
                                .font(.subheadline)
                        }
                    })
            }
            .navigationTitle("Mes Recettes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
