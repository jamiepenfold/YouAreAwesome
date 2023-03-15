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
                        //imageName = (imageName == "image0" ? "image1" : "image0")
                        
                        if imageNumber == 9{
                            imageNumber = 0
                            imageName = "image\(imageNumber)"
                        }else{
                            imageNumber += 1
                            imageName = "image\(imageNumber)"
                        }
                        print(imageNumber)
                        print(imageName)
                        
//
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
