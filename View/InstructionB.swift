//
//  InstructionB.swift
//  SKanji WatchKit Extension
//
//  Created by Vivien Christy Apriyanti on 21/08/21.
//

import SwiftUI

struct Step2B : View {
    
    var body: some View{
        VStack{
            Text("If you want to answer B, \nmove your hands \nto the left of your body").multilineTextAlignment(.center).font(.footnote)
            
            Spacer(minLength: 30)
            
            HStack{
                Text("💃").font(.system(size: 70))

                
                VStack{
                    ZStack{
                        Circle()
                            .scale(1.3)
                            .foregroundColor(Color(#colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1)))
                        Text("A")
                            .font(.system(size: 20))
                            .foregroundColor(Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
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
                                .foregroundColor(Color(#colorLiteral(red: 0.1333333333, green: 0.6, blue: 0.6509803922, alpha: 1)))
                            Text("B")
                                .font(.system(size: 20))
                                
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

struct Step3B : View {
    
    var body: some View{
        
        VStack{
            Text("Try to move your hands \nto the left now!")
                .multilineTextAlignment(.center)
                .padding()
                .font(.footnote)
            
            Text("💃").font(.system(size: 70))
        }
    }
}

struct Step4B : View{
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




struct InstructionB_Previews: PreviewProvider {
    static var previews: some View {
            Step2B()
            Step3B()
            Step4B()
        
    }
}

