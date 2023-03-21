//
//  StandardHomeMovie.swift
//  NetflixClone
//
//  Created by Andrey Lebedev on 13.03.2023.
//

import SwiftUI
import KingfisherSwiftUI

struct StandardHomeMovie: View {
	var movie: Movie
	
    var body: some View {
		KFImage(movie.thumbnailUrl)
			.resizable()
			.scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
		StandardHomeMovie(movie: exampleMovie1)
    }
}
