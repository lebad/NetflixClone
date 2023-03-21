//
//  MoviewDetailView.swift
//  NetflixClone
//
//  Created by Andrey Lebedev on 21.03.2023.
//

import SwiftUI

struct MoviewDetailView: View {
	var movie: Movie
	
	let screen = UIScreen.main.bounds
	
    var body: some View {
		ZStack {
			Color.black
				.edgesIgnoringSafeArea(.all)
			
			VStack {
				HStack {
					Spacer()
					Button {
						// close
					} label: {
						Image(systemName: "xmark.circle")
							.font(.system(size: 28))
					}
				}
				.padding(.horizontal, 22)
				ScrollView(.vertical, showsIndicators: false) {
					VStack {
						StandardHomeMovie(movie: movie)
							.frame(width: screen.width / 2.5)
						MoviewInfoSubheadlineView(movie: movie)
						if let promotionHeadline = movie.promotionHeadline {
							Text(promotionHeadline)
								.bold()
								.font(.headline)
						}
						PlayButton(
							text: "Play",
							imageString: "play.fill",
							backgroundColor: .red
						) {
							//
						}
						CurrentEpisodeInfoView(movie: movie)
						CastInfoView(movie: movie)
					}
					.padding(.horizontal, 10)
				}
				Spacer()
			}
			.foregroundColor(.white)
		}
    }
}

struct MoviewDetailView_Previews: PreviewProvider {
    static var previews: some View {
		MoviewDetailView(movie: exampleMovie6)
    }
}

struct MoviewInfoSubheadlineView: View {
	var movie: Movie
	
	var body: some View {
		HStack(spacing: 20) {
			Image(systemName: "hand.thumbsup.fill")
				.foregroundColor(.white)
			Text(String(movie.year))
			RatingView(rating: movie.rating)
			Text(movie.numberOfSeasonsDisplay)
			QualityView()
		}
		.foregroundColor(.gray)
		.padding(.vertical, 6)
	}
}

extension Movie {
	var numberOfSeasonsDisplay: String {
		if let numberOfSeasons {
			if numberOfSeasons == 1 {
				return "1 season"
			} else {
				return "\(numberOfSeasons) seasons"
			}
		}
		return ""
	}
	
	var episodeInfoDisplay: String {
		if let currentEpisode {
			return "S\(currentEpisode.season):\(currentEpisode.episode) \(currentEpisode.episodeName)"
		} else {
			return "S\(defaultEpisodeInfo.season):\(defaultEpisodeInfo.episode) \(defaultEpisodeInfo.episodeName)"
		}
	}
	
	var episodeDescriptionDisplay: String {
		if let currentEpisode {
			return currentEpisode.description
		} else {
			return defaultEpisodeInfo.description
		}
	}
}

struct RatingView: View {
	var rating: String
	
	var body: some View {
		Text(rating)
			.padding(.horizontal, 2)
			.padding(.vertical, 2)
			.background(.gray)
			.foregroundColor(.white)
			.font(.system(size: 12))
			.bold()
	}
}

struct QualityView: View {
	var body: some View {
		Text("HD")
			.padding(.horizontal, 3)
			.padding(.vertical, 3)
			.backgroundStyle(.clear)
			.border(.gray, width: 1)
			.font(.system(size: 12))
			.bold()
	}
}

struct CastInfoView: View {
	let movie: Movie
	
	var body: some View {
		VStack(spacing: 3) {
			HStack {
				Text("Cast: \(movie.cast)")
				Spacer()
			}
			HStack {
				Text("Creators: \(movie.creators)")
				Spacer()
			}
		}
		.font(.caption)
		.foregroundColor(.gray)
		.padding(.vertical, 10)
	}
}

struct CurrentEpisodeInfoView: View {
	let movie: Movie
	
	var body: some View {
		Group {
			HStack {
				Text(movie.episodeInfoDisplay)
					.bold()
				Spacer()
			}
			.padding(.vertical, 4)
			HStack {
				Text(movie.episodeDescriptionDisplay)
					.font(.subheadline)
				Spacer()
			}
		}
	}
}
