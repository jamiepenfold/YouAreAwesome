//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by jamie penfold on 2023/02/19.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    var body: some View {
            VStack{
                
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                    .shadow(radius: 30)
                    .padding()
                
                Spacer()
                
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.red)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                    .padding()
                    
                
                Spacer()
                
                HStack{
                    Button("Show Message") {
                        // this is the action performed when the button is pressed
                        let messages = ["You are Awesome!", "You are Great!", "You are Fantastic!", "Fabulous? That's You!", "You make me smile!", "When the Genius bar needs help, they call You!"]
                        
                        messageString = messages[Int.random(in: 0...messages.count-1)]
                        
                        imageName = "image\(Int.random(in: 0...9))"
                       
                    }
                    .buttonStyle(.borderedProminent)
//                    Spacer()
//
//                    Button("Awesome") {
//                        // this is the action performed when the button is pressed
//                        messageString = "You are Awesome!"
//                    }
//                    .buttonStyle(.borderedProminent)
                }
                //                .border(.purple, width: 5)
                .padding()
                .tint(Color("Vermillion"))
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
