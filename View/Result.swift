//
//  Result.swift
//  SKanji WatchKit Extension
//
//  Created by Aldino Efendi on 2021/08/23.
//

import SwiftUI

struct Result: View {
	@State var to : CGFloat = 0
	@State var count = 0
	@State var time = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
	@State var correctAnswer: String = "楽"
	@State var correct: Bool
	
    var body: some View {
			VStack{
				HStack {
					Spacer()
					VStack(alignment: .leading) {
						ZStack(){
							Circle()
								.scale(0.5)
								.trim(from: 0)
								.stroke(Color.white.opacity(0.2), style: StrokeStyle(lineWidth: 3.8, lineCap: .round))
								.foregroundColor(Color(.blue))
							Text("\(self.count)")
								.font(.system(size: 20))
							
							Circle()
								.scale(0.5)
								.trim(from: 0, to: self.to)
								.stroke(Color(#colorLiteral(red: 0.1333333333, green: 0.6, blue: 0.6509803922, alpha: 1)), style: StrokeStyle(lineWidth: 3.8, lineCap: .round))
								.foregroundColor(Color(.blue))
								.rotationEffect(.init(degrees: -90))
						}
						Spacer()
					}
				}

				
				VStack{
					Text(correct ? "Woohoo" : "Wrong")
					
					Text(correct ? "Great, looks like you \nalready understand" : "The correct answer is:")
						.multilineTextAlignment(.center)
					
					
					ZStack{
						Circle()
							.scale(1.2)
							.foregroundColor(Color(#colorLiteral(red: 0.1333333333, green: 0.6, blue: 0.6509803922, alpha: 1)))
						Text(correctAnswer)
							.font(.system(size: 35))
					}
				}
			}
    }
}


struct Result_Previews: PreviewProvider {
    static var previews: some View {
			Result(correct: true)
    }
}
