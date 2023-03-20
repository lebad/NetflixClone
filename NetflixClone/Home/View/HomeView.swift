//
//  HomeView.swift
//  NetflixClone
//
//  Created by Andrey Lebedev on 13.03.2023.
//

import SwiftUI

struct HomeView: View {
	var vm = HomeVM()
	
	let screen = UIScreen.main.bounds
	
    var body: some View {
		ZStack {
			Color.black
				.edgesIgnoringSafeArea(.all)
			// main VStack
			ScrollView(showsIndicators: false) {
				TopRowButtons()
				TopMoviewPreview(movie: exampleMovie4)
					.frame(width: screen.width)
					.padding(.top, -110)
					.zIndex(-1)
				LazyVStack { // like reuse in UITableView
					ForEach(vm.allCategories, id: \.self) { category in
						VStack {
							HStack {
								Text(category)
									.font(.title3)
								Spacer()
							}
							ScrollView(.horizontal, showsIndicators: false) {
								LazyHStack {
									ForEach(vm.getMovies(for: category)) { movie in
										StandardHomeMovie(movie: movie)
											.frame(width: 100, height: 200)
											.padding(.horizontal, 20)
									}
								}
							}
						}
					}
				}
			}
		}
		.foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopRowButtons: View {
	var body: some View {
		HStack {
			Button {
				//
			} label: {
				Image("netflix_logo")
					.resizable()
					.scaledToFit()
					.frame(width: 50)
			}
			.buttonStyle(PlainButtonStyle())
			Spacer()
			Button {
				//
			} label: {
				Text("TV Shows")
			}
			.buttonStyle(PlainButtonStyle())
			Spacer()
			Button {
				//
			} label: {
				Text("Movies")
			}
			.buttonStyle(PlainButtonStyle())
			Spacer()
			Button {
				//
			} label: {
				Text("My List")
			}
			.buttonStyle(PlainButtonStyle())
		}
		.padding(.leading, 10)
		.padding(.trailing, 30)
	}
}
