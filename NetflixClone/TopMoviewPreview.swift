//
//  TopMoviewPreview.swift
//  NetflixClone
//
//  Created by Andrey Lebedev on 15.03.2023.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviewPreview: View {
	var movie: Movie
	
	func isCategoryLast(_ category: String) -> Bool {
		let categoryCount = movie.categories.count
		if let index = movie.categories.firstIndex(of: category), index == categoryCount - 1 {
			return true
		}
		return false
	}
	
    var body: some View {
		ZStack {
			KFImage(movie.thumbnailUrl)
				.resizable()
				.scaledToFill()
				.clipped()
			VStack {
				Spacer()
				
				HStack {
					ForEach(movie.categories, id: \.self) { category in
						HStack {
							Text(category)
								.font(.footnote)
							if !isCategoryLast(category) {
								Image(systemName: "circle.fill")
									.foregroundColor(.blue)
									.font(.system(size: 3))
							}
						}
					}
				}
				Text("Raw of buttons")
			}
		}
		.foregroundColor(.white)
    }
}

struct TopMoviewPreview_Previews: PreviewProvider {
    static var previews: some View {
		TopMoviewPreview(movie: exampleMovie1)
    }
}
