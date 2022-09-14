//
//  RecipesViewModel.swift
//  ReteteMancare
//
//  Created by user217582 on 9/14/22.
//

import Foundation

class RecipesViewModel: ObservableObject{
	@Published private(set) var recipes: [Recipe] = []
	
	init(){
		recipes = Recipe.all
	}
	
	func addRecipe(recipe: Recipe){
		recipes.append(recipe)
	}
	
}
