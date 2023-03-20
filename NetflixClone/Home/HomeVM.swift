//
//  HomeVM.swift
//  NetflixClone
//
//  Created by Andrey Lebedev on 13.03.2023.
//

import Foundation

class HomeVM: ObservableObject {
	
	// key == category
	@Published var movies: [String: [Movie]] = [:]
	
	var allCategories: [String] {
		movies.keys.map { String($0) }
	}
	
	func getMovies(for category: String) -> [Movie] {
		movies[category] ?? []
	}
	
	init() {
		setupMovies()
	}
	
	func setupMovies() {
		movies["Trending Now"] = exampleMovies
		movies["Stand-Up Comedies"] = exampleMovies.shuffled()
		movies["New releases"] = exampleMovies.shuffled()
		movies["Watch it again"] = exampleMovies.shuffled()
		movies["Sci-fi"] = exampleMovies.shuffled()
	}
}
