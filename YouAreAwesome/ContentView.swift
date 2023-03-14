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
                        let message1 = "You are Awesome!"
                        let message2 = "You are Great!"
                        
                        messageString = (messageString == message1 ? message2 : message1)
                        imageName = (imageName == "image0" ? "image1" : "image0")
//                        if messageString == ""{
//                            messageString = message2
//                        }else if messageString == message2{
//                            messageString = message1
//                        }else if messageString == message1{
//                            messageString = message2
//                        }
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
