//
//  SwiftUIView.swift
//  SKanji WatchKit Extension
//
//  Created by Aldino Efendi on 2021/08/21.
//

import SwiftUI

struct Home: View {
    var body: some View {
				ScrollView{
					VStack{
						Image("homeicon")
						
						Spacer(minLength: 10)
						
						NavigationLink(
							// Change the destination if question view already created
							destination: Text("Play"),
							label: {
								Text("Play")
									.padding(.vertical, 10)
									.frame(maxWidth: .infinity, alignment: .center)
									.background(Color(#colorLiteral(red: 0.1333333333, green: 0.6, blue: 0.6509803922, alpha: 1)))
									.cornerRadius(20)
							})
							.padding(.horizontal)
							.buttonStyle(PlainButtonStyle())
						
						NavigationLink(
							destination: InstructionA(),
							label: {
								Text("Instructions")
									.padding(.vertical, 10)
									.frame(maxWidth: .infinity, alignment: .center)
									.background(Color(#colorLiteral(red: 0.1333333333, green: 0.6, blue: 0.6509803922, alpha: 1)))
									.cornerRadius(20)
							})
							.padding(.horizontal)
							.buttonStyle(PlainButtonStyle())
						
					}
				}
		}
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
