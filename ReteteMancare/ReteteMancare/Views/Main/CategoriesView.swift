//
//  CategoriesView.swift
//  ReteteMancare
//
//  Created by user217582 on 9/13/22.
//
import SwiftUI

struct CategoriesView: View {
	var body: some View {
		NavigationView{
			List{
				ForEach(Category.allCases){category in
					
					NavigationLink{
						CategoryView(category: category)
					}label: {
						Text(category.rawValue + "s")
						
					}
					

				}
			}
				.navigationTitle("Categorii")
		}
		.navigationViewStyle(.stack)
	}
}

struct CategoriesView_Previews: PreviewProvider {
	static var previews: some View {
		CategoriesView()
	}
}
