//
//  RecipeModel.swift
//  ReteteMancare
//
//  Created by user217582 on 9/13/22.
//

import Foundation

enum Category: String, CaseIterable, Identifiable{
	var id: String { self.rawValue }
	case breakfast = "Breakfast"
	case soup = "Soup"
	case salad = "Salad"
	case appetizer = "Appetizer"
	case main = "Main"
	case side = "Side"
	case dessert = "Dessert"
	case snack = "Snack"
	case drink = "Drink"
}

struct Recipe: Identifiable{
	let id = UUID()
	let name: String
	let image: String
	let description: String
	let ingredients: String
	let directions: String
	let category: Category.RawValue
	let datePublished: String

}

extension Recipe{
	static let all: [Recipe] = [
	
		Recipe(name: "Paste carbonara",
			   image: "https://savoriurbane.com/wp-content/uploads/2017/08/paste-carbonara-reteta-originala-italiana.jpg",
			   description: "Paste cabonara facute dupa reteta traditionala",
			   ingredients: "Panceta, spaghetti, parmezan, un galbenus de ou, piper",
			   directions: "Se pun pastele la fiert. In timpul acesta punem panceta sa se prajeasca intr-o tigaie in grasimea proprie. Intr-un bol punem galbenusul de ou cu niste parmezan proaspat ras si piper proaspat macinat. Amestecam compozitia pana obtinem o crema. Dupa ce s-a facut panceta punem peste niste apa in care au fiert pastele. Adaugam putina apa de la paste si in compozitia cu ou si parmezan. Adaugam pastele peste panceta, le amestecam. Oprim focul aragazului. Adaugam compozitia cu ou si parmezan peste pastele cu panceta si le amestecam. Acestea vor iesi cremoase. Dupa ce s-a asezat portia de paste in farfurie recomand putin piper proaspat macinat deasupra.",
			   category: "Main",
			   datePublished: "14-09-2022"
			  ),
		
		Recipe(name: "Paste cu ton",
			   image: "https://1.bp.blogspot.com/-trkSR4TFJDc/WEGIFqsZkwI/AAAAAAAA1OQ/9oW7TvRoY1ASwGlQgap8U2eAoFBzuJQVgCLcB/s1600/paste-cu-ton.JPG",
			   description: "Paste cu ton",
			   ingredients: "Ton, paste, parmezan, zeama de lamaie, sos de rosii, usturoi, ceapa, busuioc",
			   directions: "Se pun pastele la fiert. In timpul acesta punem intr-o tigaie pe foc ceapa tocata marunt cu un catel de usturoi. Dupa ce se caleste ceapa putem adauga sosul de rosii si tonul in compozitie. Amestecam continutul tigaii. Adaugam putina apa in care fierb pastele si adaugam niste zeama de lamaie si busuioc. Dupa putem adauga pastele, amestecam si putem aseza mancarea in farfurii cu putin parmezan deasupra.",
			   category: "Main",
			   datePublished: "14-09-2022"
			  ),
		
		Recipe(name: "Omleta rulou",
			   image: "https://jurnalderetete.md/sites/default/files/pictures/image/maxresdefault20.jpg",
			   description: "Omleta rulou",
			   ingredients: "Oua, ceapa, sunca, cascaval, lapte",
			   directions: "Se sparg ouale intr un bal. Adaugam sare, piper, chilli, ceapa tocata marunt, sunca taiata marunt, putin lapte si cascaval in bol si amestecam bine compozitia. Punem o tigaie pe foc(foc mic spre mediu) cu putin ulei de cocos. Daca nu aveti ulei de cocos puteti folosi orice tip de ulei. Asteptam sa se incalzeasca uleiul, iar dupa adaugam compozitia in tigaie. Cand observam ca incepe sa se lege putin compozitia putem veni cu o spatula dintr-o parte a tigaii si sa rulam compozitia. De fiecare data cand rulam, tragem compozitia cat mai aproape de partea din care vine spatula. Repetam procesul pana obtinem ruloul, iar dupa poate fi servita.",
			   category: "Breakfast",
			   datePublished: "14-09-2022"
			  ),
		
		Recipe(name: "Supa de legume",
			   image: "https://savoriurbane.com/wp-content/uploads/2018/10/Sup%C4%83-de-legume-re%C8%9Beta-simpl%C4%83-de-post-vegan%C4%83-savori-urbane.jpg",
			   description: "Supa de legume",
			   ingredients: "Morcovi, pastarnac, telina, ceapa, praz, telina, mazare, ardei, ciuperci, chimen, ulei",
			   directions: "Se pun la calit ceapa, ardeii, prazul si ciupercile intr-un vas. Dupa ce s-au calit putem adauga celelalte legume, adaugam apa si lasam vasul pe foc timp de o ora, dupa care supa poate fi servita.",
			   category: "Soup",
			   datePublished: "14-09-2022"
			  ),
		
		Recipe(name: "Salata cu ton",
			   image: "https://teoskitchen.ro/wp-content/uploads/2020/08/ton-cu-porumb-si-maioneza.jpg",
			   description: "Salata cu ton",
			   ingredients: "Ton, ceapa, zeama de lamaie, porumb",
			   directions: "Se adauga toate ingredientele intr-un bol, iar salata poate fi servita. Recomand aceasta salata cu niste paine prajite pe langa.",
			   category: "Salad",
			   datePublished: "14-09-2022"
			  ),
		
		Recipe(name: "Salata de vinete",
			   image:"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEggNr8ZV9ZLO044xgIyAG0yrLWotVrt9z_UZUT6_HsDrYcTirYo3eBTupyV822uwTureSqRdBJEaavNbwCov1nYElgOwo7gtI_lft8mhYHO034m2qzRYdEt823nRT4cDDlfJrNf784KzY7tQlqQJ0NkBHlK9eHYhfMkSP63Vu3f6eSUF8YKE61btQdP/s1000/salata-de-vinete-de-post-reteta.JPG",
			   description: "Salata de vinete",
			   ingredients: "Salata de vinete, paine, rosii",
			   directions: "Se pune salata de vinete pe paine cu o rosie taiata langa.",
			   category: "Appetizer",
			   datePublished: "14-09-2022"
			  ),
		
		Recipe(name: "Cartofi la cuptor",
			   image:"https://savoriurbane.com/wp-content/uploads/2017/02/Cartofi-la-cuptor-cu-usturoi-si-parmezan-reteta-de-garlic-parmesan-wedges-savori-urbane-01.jpg",
			   description: "Cartofi la cuptor",
			   ingredients: "Cartofi, condimente, parmezan",
			   directions: "Se feliaza cartofii. Se pune o foaie de copt peste o tava pe care o ungem cu putin ulei. Asezam cartofii pe tava, ii condimentam, iar dupa ii punem la cuptor pentru 35 minute. Ii scoatem pentru a pune parmezan peste, dupa care punem tava la cuptor pentru inca 5 minute. Dupa ce scoatem tava, cartofii sunt gata de servire",
			   category: "Side",
			   datePublished: "14-09-2022"
			  ),
		
		Recipe(name: "Mugcake proteic",
			   image:"https://www.drinkwholesome.com/wp-content/uploads/2021/04/protein-powder-mug-cake.jpg",
			   description: "Mugcake proteic",
			   ingredients: "lapte, o cupa de proteina, praf de copt, indulcitori",
			   directions: "Se adauga laptele, cupa proteica, 3g praf de copt si indulcitori dupa gust intr-o cana. Se amesteca continutul dupa care se pune la microunde pentru 1 minut si 30 de secunde.",
			   category: "Dessert",
			   datePublished: "14-09-2022"
			  ),
		
		Recipe(name: "Salata de fructe",
			   image:"https://www.chefnicolaietomescu.ro/wp-content/uploads/2020/01/CE60E402-A0BE-41BF-8F1B-AA932376BCDB-225x300.jpeg",
			   description: "Salata de fructe",
			   ingredients: "Banane, mere, struguri, kiwi, frisca",
			   directions: "Se feliaza bananele, merele si kiwi-ul, dupa care se adauga intr-un bol peste care se adauga strugurii si frisca dupa preferinta",
			   category: "Snack",
			   datePublished: "14-09-2022"
			  ),
		
		Recipe(name: "Limonada",
			   image:"https://bucate-aromate.ro/wp-content/uploads/2021/06/limonada-5-of-7.jpg",
			   description: "Limonada",
			   ingredients: "Lamaie, menta, apa, miere",
			   directions: "Se stoarce o lamaie si se adauga sucul de lamaie intr-un pahar. Peste acesta se pune apa, menta si miere, dupa care se amesteca continutul si se serveste",
			   category: "Drink",
			   datePublished: "14-09-2022"
			  ),
	]
}
