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
	
	// Detail
	let year: Int
	let rating: String
	var numberOfSeasons: Int?
	
	// Personalization
	var currentEpisode: CurrentEpisodeInfo?
	var defaultEpisodeInfo: CurrentEpisodeInfo
	var creators: String
	var cast: String
	
	var episodes: [Episode]?
	var promotionHeadline: String?
}

extension Movie: Identifiable {}

struct CurrentEpisodeInfo: Hashable, Equatable {
	var episodeName: String
	var description: String
	var season: Int
	var episode: Int
}
