//
//  SettingsView.swift
//  ReteteMancare
//
//  Created by user217582 on 9/13/22.
//

import SwiftUI
import UserNotifications

struct SettingsView: View {
	var body: some View {
		NavigationView{
			Text("v 1.0.0")
				.navigationTitle("Setari")
		}
		.navigationViewStyle(.stack)
		
	}
}

struct SettingsView_Previews: PreviewProvider {
	static var previews: some View {
		SettingsView()
	}
}



