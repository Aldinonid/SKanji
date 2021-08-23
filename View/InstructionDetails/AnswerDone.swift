//
//  SwiftUIView.swift
//  SKanji WatchKit Extension
//
//  Created by Aldino Efendi on 2021/08/22.
//

import SwiftUI

struct AnswerDone: View{
	var body: some View{
		VStack{
			Text("Well Done").padding(.top, 50)
			
			Spacer()
			
			NavigationLink(
				destination: Text("Next"),
				label: {
					Text("Next")
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

struct AnswerDone_Previews: PreviewProvider {
    static var previews: some View {
			AnswerDone()
    }
}
