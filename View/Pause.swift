//
//  Pause.swift
//  SKanji WatchKit Extension
//
//  Created by Muhammad Noor Ansyari on 23/08/21.
//

import SwiftUI

struct Pause: View {
    @State private var pauseBtn = false
    
    
    var body: some View {
        
        // Geometry Reader For Getting Frame
        GeometryReader{reader in
            
            let rect = reader.frame(in: .global)
            
        HStack{
            
            // Button
            
            NavigationLink(
                destination: Home(),
                label: {
                    VStack{
                        ZStack{
                            Circle()
                                .scale(0.8)
                                .foregroundColor(Color(#colorLiteral(red: 0.1549147069, green: 0.04003052786, blue: 0.04379596561, alpha: 1)))

                            Image(systemName: "stop.fill").font(.system(size: 36)).foregroundColor(.red)
                            
                                
                        }.frame(alignment: .bottom)
                        Text("Stop")
                            .font(.system(size: 12))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(alignment: .top)
                    }.frame(height: 100, alignment: .center)
                })
                .buttonStyle(PlainButtonStyle())
            
            
                Button(action: {
                pauseBtn.toggle()
            }, label: {
                
                if pauseBtn{
                    VStack{
                    ZStack{
                    Circle()
                        .scale(0.8)
                        .foregroundColor(Color(#colorLiteral(red: 0.07411009818, green: 0.1438824236, blue: 0, alpha: 1)))

                    Image(systemName: "play.fill").font(.system(size: 36)).foregroundColor(.green)

                        }
                        Text("Play")
                            .font(.system(size: 12))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(alignment: .top)
                    }.frame(height: 100, alignment: .center)
                   
                }else {
                    VStack{
                    ZStack{
                    Circle()
                        .scale(0.8)
                        .foregroundColor(Color(#colorLiteral(red: 0.07411009818, green: 0.1438824236, blue: 0, alpha: 1)))

                    Image(systemName: "pause.fill").font(.system(size: 36)).foregroundColor(.green)

                        }
                        Text("Pause")
                            .font(.system(size: 12))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(alignment: .top)
                    }.frame(height: 100, alignment: .center)
                   
                }
            }).buttonStyle(PlainButtonStyle())
                
        }
        .frame(height: rect.height, alignment: .center)
        .navigationBarTitle(Text("Paused"))
    }
}
}
    

struct Pause_Previews: PreviewProvider {
    static var previews: some View {
        Pause()
    }
}
