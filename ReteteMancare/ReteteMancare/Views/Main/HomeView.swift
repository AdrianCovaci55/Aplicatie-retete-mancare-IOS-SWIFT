//
//  HomeView.swift
//  ReteteMancare
//
//  Created by user217582 on 9/13/22.
//

import SwiftUI

struct HomeView: View {
	@EnvironmentObject var recipesVM: RecipesViewModel
	var body: some View {
		NavigationView{
			
			ScrollView{
				RecipeList(recipes: recipesVM.recipes)
			}
			.navigationTitle("Retetele mele")
		}
		.navigationViewStyle(.stack)
	}
}

struct HomeView_Previews: PreviewProvider {
	static var previews: some View {
		HomeView()
			.environmentObject(RecipesViewModel())
	}
}
