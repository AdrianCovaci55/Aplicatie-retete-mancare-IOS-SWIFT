//
//  RecipeList.swift
//  ReteteMancare
//
//  Created by user217582 on 9/14/22.
//

import SwiftUI

struct RecipeList: View {
	
	var recipes: [Recipe]
	
    var body: some View {
		VStack{
			HStack {
				Text("\(recipes.count)\(recipes.count > 1 ? " retete":" reteta")")
					.font(.headline)
					.fontWeight(.medium)
				.opacity(0.7)
				
				Spacer()
			}
			
			LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15){
				ForEach(recipes){ recipe in
					NavigationLink(destination: RecipeView(recipe: recipe)){
						RecipeCard(recipe: recipe)
					}
				}
			}
			.padding(.top)
		}
		.padding(.horizontal)
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
		ScrollView{
			RecipeList(recipes: Recipe.all)
		}
    }
}
