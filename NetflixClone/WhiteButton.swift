//
//  WhiteButton.swift
//  NetflixClone
//
//  Created by Andrey Lebedev on 16.03.2023.
//

import SwiftUI

struct WhiteButton: View {
	var text: String
	var imageString: String
	
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
			.foregroundColor(.black)
			.background(.white)
			.cornerRadius(3)
		}
	}
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
		ZStack {
			Color.black
				.edgesIgnoringSafeArea(.all)
			WhiteButton(text: "Play", imageString: "play.fill") {
				print("action")
			}
		}
    }
}
