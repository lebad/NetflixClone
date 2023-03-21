//
//  Episode.swift
//  NetflixClone
//
//  Created by Andrey Lebedev on 21.03.2023.
//

import Foundation

struct Episode {
	var id = UUID().uuidString
	
	var name: String
	var season: Int
	var thumbnailImageUrlString: String
	var description: String
}

extension Episode {
	var thumbnailImageUrl: URL {
		URL(string: thumbnailImageUrlString)!
	}
}

extension Episode: Identifiable {}
