//
//  ContentView.swift
//  ReteteMancare
//
//  Created by user217582 on 9/13/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
			.environmentObject(RecipesViewModel())
    }
}
