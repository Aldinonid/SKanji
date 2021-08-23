//
//  InstructionA.swift
//  SKanji WatchKit Extension
//
//  Created by Aldino Efendi on 2021/08/21.
//

import SwiftUI


struct Instruction: View {
	
    var body: some View {
				
				TabView {
					Step1().tabItem {}.tag(1)
					InstructionAnswer(message: "If you want answer A, \nDo a jump", emoji: "🧍", A: true, B: false, C: false, D: false).tabItem {}.tag(2)
					
					InstructionAnswer(message: "If you want to answer B, \nmove your hands \nto the left of your body", emoji: "💃", A: false, B: true, C: false, D: false).tabItem {}.tag(3)
					
					InstructionAnswer(message: "If you want to answer C, \nwave your hands", emoji: "👋", A: false, B: false, C: true, D: false).tabItem {}.tag(4)
					
					InstructionAnswer(message: "If you want to answer D, \nmove your hands \nto the right of your body", emoji: "🕺", A: false, B: false, C: false, D: true).tabItem {}.tag(5)
					
				}
				.tabViewStyle(PageTabViewStyle())
				
    }
}

struct Step1: View {
	var body: some View{
		Text("There will be 10 \nmutiple choice \nquestions")
			.multilineTextAlignment(.center)
	}
}

struct InstructionReady : View{
	var body: some View{
		VStack(alignment: .center){
			Text("You are ready to play now!").multilineTextAlignment(.center).padding(.top, 50)
			
			Spacer()
			
			NavigationLink(
				destination: Text("Next"),
				label: {
					Text("Play")
						.padding(.vertical, 10)
						.frame(maxWidth: .infinity, alignment: .center)
						.background(Color(#colorLiteral(red: 0.1333333333, green: 0.6, blue: 0.6509803922, alpha: 1)))
						.cornerRadius(20)
				})
				.padding(.horizontal)
				.buttonStyle(PlainButtonStyle())
				.padding(.bottom, -10)
		}
	}
}




struct InstructionA_Previews: PreviewProvider {
    static var previews: some View {
			Instruction()
    }
}
