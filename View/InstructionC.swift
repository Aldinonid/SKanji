//
//  InstructionC.swift
//  SKanji WatchKit Extension
//
//  Created by Vivien Christy Apriyanti on 21/08/21.
//

import SwiftUI

struct Step2C : View {
    
    var body: some View{
        VStack{
            Text("If you want to answer C, \nwave your hands").multilineTextAlignment(.center).font(.footnote).padding()
            
            Spacer(minLength: 40)
            
            HStack{
                Text("👋").font(.system(size: 70))

                
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
                                .foregroundColor(Color(#colorLiteral(red: 0.4235294118, green: 0.4235294118, blue: 0.4235294118, alpha: 1)))
                            Text("B")
                                .font(.system(size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
                                
                        }
                        
                    }
                    
                    ZStack{
                        Circle()
                            .scale(1.3)
                            .foregroundColor(Color(#colorLiteral(red: 0.1333333333, green: 0.6, blue: 0.6509803922, alpha: 1)))
                        Text("C")
                            .font(.system(size: 20))
                            
                    }
                }
            }
        }
    }
}

struct Step3C : View {
    
    var body: some View{
        
        VStack{
            Text("Try to wave your hands now!")
                .multilineTextAlignment(.center)
                .padding()
                
            
            Text("👋").font(.system(size: 70))
        }
    }
}

struct Step4C : View{
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




struct InstructionC_Previews: PreviewProvider {
    static var previews: some View {
            Step2C()
            Step3C()
            Step4C()
        
    }
}


