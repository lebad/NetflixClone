//
//  Movie.swift
//  NetflixClone
//
//  Created by Andrey Lebedev on 13.03.2023.
//

import Foundation

struct Movie {
	let id: String
	let name: String
	let thumbnailUrl: URL
	
	let categories: [String]
}

extension Movie: Identifiable {}
