//
//  InstructionA.swift
//  SKanji WatchKit Extension
//
//  Created by Aldino Efendi on 2021/08/21.
//

import SwiftUI


struct InstructionA: View {
	
		@State private var currentIndex = 0
		private let colors: [Color] = [.red, .blue, .green, .yellow]
	
    var body: some View {
			HStack{
				Text("There will be 10 \nmutiple choice \nquestions")
					.multilineTextAlignment(.center)
				
				 //Later will change this until all view for instruction already created
				
//				TabView(selection: $currentIndex) {
//					ForEach(0..<colors.count, id: \.self) { index in
//						colors[index]
//							.tag(index)
//					}
//				}
//				.tabViewStyle(PageTabViewStyle())
				
				
			}
    }
}

struct Step2: View {
	
	var body: some View{
		VStack{
			Text("If you want answer A, \nDo a jump").multilineTextAlignment(.center)
			
			Spacer(minLength: 30)
			
			HStack{
				Text("🧍").font(.system(size: 70))
				
				VStack{
					ZStack{
						Circle()
							.scale(1.3)
							.foregroundColor(Color(#colorLiteral(red: 0.1333333333, green: 0.6, blue: 0.6509803922, alpha: 1)))
						Text("A")
							.font(.system(size: 20))
					}
					
					HStack{
						ZStack{
							Circle()
								.scale(1.3)
								.foregroundColor(Color(#colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1)))
							Text("D")
								.font(.system(size: 20))
								.foregroundColor(Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
						}
						
						ZStack{
							Circle()
								.scale(1.3)
								.foregroundColor(Color(#colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1)))
							Text("B")
								.font(.system(size: 20))
								.foregroundColor(Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
						}
						
					}
					
					ZStack{
						Circle()
							.scale(1.3)
							.foregroundColor(Color(#colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1)))
						Text("C")
							.font(.system(size: 20))
							.foregroundColor(Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
					}
				}
			}
		}
	}
}

struct Step3: View {
	
	var body: some View{
		
		VStack{
			Text("Try to jump now!")
				.padding(20)
			
			Text("🧍").font(.system(size: 70))
		}
	}
}

struct Step4: View{
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




struct InstructionA_Previews: PreviewProvider {
    static var previews: some View {
			InstructionA()
            Step2()
            Step3()
            Step4()
        
    }
}
