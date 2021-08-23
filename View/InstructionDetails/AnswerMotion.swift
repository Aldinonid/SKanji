//
//  AnswerMotion.swift
//  SKanji WatchKit Extension
//
//  Created by Aldino Efendi on 2021/08/22.
//

import SwiftUI

struct AnswerMotion: View {
	var message: String
	var emoji: String
	
    var body: some View {
			VStack{
				Text(message)
					.multilineTextAlignment(.center)
					.padding()
					.font(.footnote)
				
				Text(emoji).font(.system(size: 70))
			}

    }
}

struct AnswerMotion_Previews: PreviewProvider {
    static var previews: some View {
        AnswerMotion(message: "Try to jump now!", emoji: "🧍")
				AnswerMotion(message: "Try to move your hands \nto the left now!", emoji: "💃")
				AnswerMotion(message: "Try to wave your hands now!", emoji: "👋")
				AnswerMotion(message: "Try to move your hands \nto the right now!", emoji: "🕺")
    }
}
