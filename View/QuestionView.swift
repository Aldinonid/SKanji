//
//  Question.swift
//  SKanji WatchKit Extension
//
//  Created by Maulana Firdaus on 2021/08/24.
//

import SwiftUI

struct QuestionView: View {
		@State var soalKanji = "MUSIC"
		@State var timer = "2"
		@State var score: String = "9"
		@State var count = 0
		@State var to : CGFloat = 0

    var body: some View {
			VStack {
				Text("Score: \(score)")
					.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment:.trailing)
				
				Spacer()
				
				Text("What is the kanji of")
					.lineLimit(nil)
				
				Text ("\(soalKanji)?")
					.font(.system(size: 30))
					.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
				
				ZStack{
					Circle()
						.scale(0.8)
						.trim(from: 0, to: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
						.stroke(Color.white.opacity(0.2), style: StrokeStyle(lineWidth: 3.8, lineCap: .round))
						.foregroundColor(Color(.blue))
					
					Text("\(self.count)")
						.font(.system(size: 30))
					
					Circle()
						.scale(0.8)
						.trim(from: 0, to: self.to)
						.stroke(Color(#colorLiteral(red: 0.1333333333, green: 0.6, blue: 0.6509803922, alpha: 1)), style: StrokeStyle(lineWidth: 3.8, lineCap: .round))
						.foregroundColor(Color(.blue))
						.rotationEffect(.init(degrees: -90))
				}
				.padding()
				
			}
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
