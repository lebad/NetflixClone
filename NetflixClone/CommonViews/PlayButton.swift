//
//  PlayButton.swift
//  NetflixClone
//
//  Created by Andrey Lebedev on 16.03.2023.
//

import SwiftUI

struct PlayButton: View {
	var text: String
	var imageString: String
	var backgroundColor = Color.white
	
	var action: () -> Void

	var body: some View {
		Button {
			action()
		} label: {
			HStack {
				Spacer()
				Image(systemName: imageString)
					.font(.headline)
				Spacer()
					.frame(width: 14)
				Text(text)
					.font(.system(size: 16))
					.bold()
				Spacer()
			}
			.padding(.vertical, 6)
			.foregroundColor(backgroundColor == .white ? .black : .white)
			.background(backgroundColor)
			.cornerRadius(3)
		}
	}
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
		ZStack {
			Color.black
				.edgesIgnoringSafeArea(.all)
			PlayButton(text: "Play", imageString: "play.fill") {
				print("action")
			}
		}
    }
}
