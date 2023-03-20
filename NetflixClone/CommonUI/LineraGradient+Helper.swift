//
//  LineraGradient+Helper.swift
//  NetflixClone
//
//  Created by Andrey Lebedev on 17.03.2023.
//

import Foundation
import SwiftUI

extension LinearGradient {
	static let backOpacityGradient = LinearGradient(
		gradient: Gradient(
			colors:
				[
					.black.opacity(0.0),
					.black.opacity(0.95)
				]
		),
		startPoint: .top,
		endPoint: .bottom
	)
}
