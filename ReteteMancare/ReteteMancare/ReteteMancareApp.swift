//
//  ReteteMancareApp.swift
//  ReteteMancare
//
//  Created by user217582 on 9/13/22.
//

import SwiftUI

@main
struct ReteteMancareApp: App {
	@StateObject var recipesViewModel = RecipesViewModel()
	
    var body: some Scene {
        WindowGroup {
            ContentView()
				.environmentObject(recipesViewModel)
        }
    }
}

