//
//  FavoritesView.swift
//  ReteteMancare
//
//  Created by user217582 on 9/13/22.
//

import SwiftUI

struct FavoritesView: View {
	var body: some View {
		NavigationView{
			Text("Nu exista retete salvate momentan")
				.navigationTitle("Favorite")
		}
		.navigationViewStyle(.stack)
		
	}
}

struct FavoritesView_Previews: PreviewProvider {
	static var previews: some View {
		FavoritesView()
	}
}
