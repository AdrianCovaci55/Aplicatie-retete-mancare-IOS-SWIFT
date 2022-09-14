//
//  AddRecipeView.swift
//  ReteteMancare
//
//  Created by user217582 on 9/14/22.
//

import SwiftUI

struct AddRecipeView: View {
	@EnvironmentObject var recipesVM: RecipesViewModel
	
	@State private var name: String = ""
	@State private var selectedCategory: Category = Category.main
	@State private var description: String = ""
	@State private var ingredients: String = ""
	@State private var directions: String = ""
	@State private var navigateToRecipe = false
	
	@Environment(\.dismiss) var dismiss

    var body: some View {
		NavigationView{
			Form{
				Section(header: Text("Nume")){
					TextField("Nume reteta", text: $name)
				}
				
				Section(header: Text("Categorie")){
					Picker("Categorie", selection: $selectedCategory){
						ForEach(Category.allCases){ category in
							Text(category.rawValue)
								.tag(category)
						}
					}
					.pickerStyle(.menu)
				}
				
				Section(header: Text("Descriere")){
					TextEditor(text: $description)
				}
				
				Section(header: Text("Ingrediente")){
					TextEditor(text: $ingredients)
				}
				
				Section(header: Text("Indicatii")){
					TextEditor(text: $directions)
				}
			}
			.toolbar(content: {
				ToolbarItem(placement: .navigationBarLeading){
					Button{
						dismiss()
					}label: {
						Label("Cancel", systemImage: "xmark")
							.labelStyle(.iconOnly)
					}
				}
				
				ToolbarItem{
					NavigationLink(isActive: $navigateToRecipe) {
						RecipeView(recipe: recipesVM.recipes.sorted{ $0.datePublished > $1.datePublished}[0])
							.navigationBarBackButtonHidden(true)
					} label: {
						Button{
							saveRecipe()
							navigateToRecipe = true
						}label: {
							Label("Done", systemImage: "checkmark")
								.labelStyle(.iconOnly)
						}
						
					}
					.disabled(name.isEmpty)
					
				}

				
			})
			.navigationTitle("Reteta noua")
			.navigationBarTitleDisplayMode(.inline)
		}
		.navigationViewStyle(.stack)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
    }
}

extension AddRecipeView{
	private func saveRecipe(){
		let now = Date()
		
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat="yyyy-mm-dd"
		
		let datePublished = dateFormatter.string(from: now)
		print(datePublished)
		
		let recipe = Recipe(name: name, image: "", description: description, ingredients: ingredients, directions: directions, category: selectedCategory.rawValue, datePublished: datePublished)
		recipesVM.addRecipe(recipe: recipe)
	}
}
