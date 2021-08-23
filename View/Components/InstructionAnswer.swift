//
//  InstructionAnswer.swift
//  SKanji WatchKit Extension
//
//  Created by Aldino Efendi on 2021/08/22.
//

import SwiftUI

struct InstructionAnswer : View {
	var message: String
	var emoji: String
	var A: Bool
	var B: Bool
	var C: Bool
	var D: Bool
	
	var body: some View{
		VStack{
			Text(message).multilineTextAlignment(.center).font(.footnote)
			
			Spacer(minLength: 30)
			
			HStack{
				Text(emoji).font(.system(size: 70))
				
				
				VStack{
					ZStack{
						Circle()
							.scale(1.3)
							.foregroundColor(A ? Color(#colorLiteral(red: 0.1333333333, green: 0.6, blue: 0.6509803922, alpha: 1)) : Color(#colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1)))
						Text("A")
							.font(.system(size: 20))
							.foregroundColor(A ? Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)) : Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
						
					}
					
					HStack{
						ZStack{
							Circle()
								.scale(1.3)
								.foregroundColor(D ? Color(#colorLiteral(red: 0.1333333333, green: 0.6, blue: 0.6509803922, alpha: 1)) : Color(#colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1)))
							Text("D")
								.font(.system(size: 20))
								.foregroundColor(D ? Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)) : Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
						}
						
						ZStack{
							Circle()
								.scale(1.3)
								.foregroundColor(B ? Color(#colorLiteral(red: 0.1333333333, green: 0.6, blue: 0.6509803922, alpha: 1)) : Color(#colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1)))
							Text("B")
								.font(.system(size: 20))
								.foregroundColor(B ? Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)) : Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
							
						}
						
					}
					
					ZStack{
						Circle()
							.scale(1.3)
							.foregroundColor(C ? Color(#colorLiteral(red: 0.1333333333, green: 0.6, blue: 0.6509803922, alpha: 1)) : Color(#colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1)))
						Text("C")
							.font(.system(size: 20))
							.foregroundColor(C ? Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)) : Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
						
					}
				}
			}
		}
	}
}

struct InstructionAnswer_Previews: PreviewProvider {
    static var previews: some View {
			InstructionAnswer(message: "If you want answer A, \nDo a jump", emoji: "🧍", A: true, B: false, C: false, D: false)
    }
}
