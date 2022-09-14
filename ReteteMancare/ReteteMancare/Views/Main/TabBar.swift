//
//  TabBar.swift
//  ReteteMancare
//
//  Created by user217582 on 9/13/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
		TabView{
			HomeView()
				.tabItem{
					Label("Acasa", systemImage: "house")
				}
			
			CategoriesView()
				.tabItem{
					Label("Categorii", systemImage: "square.fill.text.grid.1x2")
				}
			
			NewRecipeView()
				.tabItem{
					Label("Reteta noua", systemImage: "plus")
				}
			
			FavoritesView()
				.tabItem{
					Label("Favorites", systemImage: "heart")
				}
			
			SettingsView()
				.tabItem{
					Label("Setari", systemImage: "gear")
				}
			
		}
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
			.environmentObject(RecipesViewModel())
    }
}
