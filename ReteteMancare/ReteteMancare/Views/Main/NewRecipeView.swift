//
//  NewRecipeView.swift
//  ReteteMancare
//
//  Created by user217582 on 9/13/22.
//

import SwiftUI

struct NewRecipeView: View {
	@State private var showAddRecipe = false
	
	var body: some View {
		NavigationView{
			Button("Adauga reteta"){
				showAddRecipe = true
			}
			.navigationTitle("Reteta noua")
		}
		.navigationViewStyle(.stack)
		.sheet(isPresented: $showAddRecipe){
			AddRecipeView();
		}
	}
}

struct NewRecipeView_Previews: PreviewProvider {
	static var previews: some View {
		NewRecipeView()
	}
}
