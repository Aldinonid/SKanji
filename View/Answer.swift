//
//  Answer.swift
//  SKanji WatchKit Extension
//
//  Created by Jeremy Yonathan on 21/08/21.
//

import SwiftUI

struct Answer: View {
    
    
    @State var start = false
    @State var to : CGFloat = 0
    @State var count = 0
    @State var time = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        
        
                        VStack{
                            ZStack{
                                Circle()
                                    .scale(1)
                                    .foregroundColor(Color(#colorLiteral(red: 0.1333333333, green: 0.6, blue: 0.6509803922, alpha: 1)))
                                Text("火")
                                    .font(.system(size: 35))
                            }
                           
                            
                            HStack{
                                ZStack{
                                    Circle()
                                        .scale(1)
                                        .foregroundColor(Color(#colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1)))
                                    Text("水")
                                        .font(.system(size: 35))
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                }
                                
                                
                                
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
                                
                                
                                
                                ZStack{
                                    Circle()
                                        .scale(1)
                                        .foregroundColor(Color(#colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1)))
                                    Text("風")
                                        .font(.system(size: 35))
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                }
                                
                            }
                            
                            ZStack{
                                Circle()
                                    .scale(1)
                                    .foregroundColor(Color(#colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1)))
                                Text("楽")
                                    .font(.system(size: 35))
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            }
                        }
                    }
                }
        
        


struct Answer_Previews: PreviewProvider {
    static var previews: some View {
        Answer()
    }
}

