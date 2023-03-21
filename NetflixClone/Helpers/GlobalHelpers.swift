//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by Andrey Lebedev on 13.03.2023.
//

import Foundation

let exampleMovie1 = Movie(
	id: UUID().uuidString,
	name: "DARK",
	thumbnailUrl: URL(string: "https://picsum.photos/200/300")!,
	categories: ["Destopian", "Exciting", "Suspensfull", "Sci-fi TV"],
	year: 2020,
	rating: "TV-MA",
	numberOfSeasons: 1,
	defaultEpisodeInfo: exampleEpisodeInfo1,
	creators: "It is a long established fact that a reader",
	cast: "Contrary to popular belief, Lorem Ipsum is not simply random text"
)
let exampleMovie2 = Movie(
	id: UUID().uuidString,
	name: "Travellers",
	thumbnailUrl: URL(string: "https://picsum.photos/200/301")!,
	categories: ["Destopian", "Exciting", "Suspensfull", "Sci-fi TV"],
	year: 2020,
	rating: "TV-MA",
	numberOfSeasons: 2,
	defaultEpisodeInfo: exampleEpisodeInfo1,
	creators: "It is a long established fact that a reader",
	cast: "Contrary to popular belief, Lorem Ipsum is not simply random text"
)
let exampleMovie3 = Movie(
	id: UUID().uuidString,
	name: "Community",
	thumbnailUrl: URL(string: "https://picsum.photos/200/302")!,
	categories: ["Destopian", "Exciting", "Suspensfull", "Sci-fi TV"],
	year: 2020,
	rating: "TV-MA",
	numberOfSeasons: 3,
	defaultEpisodeInfo: exampleEpisodeInfo1,
	creators: "It is a long established fact that a reader",
	cast: "Contrary to popular belief, Lorem Ipsum is not simply random text"
)
let exampleMovie4 = Movie(
	id: UUID().uuidString,
	name: "Alone",
	thumbnailUrl: URL(string: "https://picsum.photos/200/303")!,
	categories: ["Destopian", "Exciting", "Suspensfull", "Sci-fi TV"],
	year: 2020,
	rating: "TV-MA",
	numberOfSeasons: 4,
	defaultEpisodeInfo: exampleEpisodeInfo1,
	creators: "It is a long established fact that a reader",
	cast: "Contrary to popular belief, Lorem Ipsum is not simply random text"
)
let exampleMovie5 = Movie(
	id: UUID().uuidString,
	name: "Hannibal",
	thumbnailUrl: URL(string: "https://picsum.photos/200/304")!,
	categories: ["Destopian", "Exciting", "Suspensfull", "Sci-fi TV"],
	year: 2020,
	rating: "TV-MA",
	numberOfSeasons: 5,
	defaultEpisodeInfo: exampleEpisodeInfo1,
	creators: "It is a long established fact that a reader",
	cast: "Contrary to popular belief, Lorem Ipsum is not simply random text"
)
let exampleMovie6 = Movie(
	id: UUID().uuidString,
	name: "After life",
	thumbnailUrl: URL(string: "https://picsum.photos/200/305")!,
	categories: ["Destopian", "Exciting", "Suspensfull", "Sci-fi TV"],
	year: 2020,
	rating: "TV-MA",
	numberOfSeasons: 6,
	defaultEpisodeInfo: exampleEpisodeInfo1,
	creators: "It is a long established fact that a reader",
	cast: "Contrary to popular belief, Lorem Ipsum is not simply random text",
	promotionHeadline: "Watch Season 6 Now"
)

let exampleMovies =
[
	exampleMovie1,
	exampleMovie2,
	exampleMovie3,
	exampleMovie4,
	exampleMovie5,
	exampleMovie6
]

let exampleEpisodeInfo1 = CurrentEpisodeInfo(
	episodeName: "Beginnings and Endings",
	description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
	season: 2,
	episode: 1
)
