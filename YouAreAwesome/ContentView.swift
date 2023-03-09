//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by jamie penfold on 2023/02/19.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "Namaste"
    var body: some View {
            VStack{
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
                    Button("Great") {
                        // this is the action performed when the button is pressed
                        messageString = "You are Great!"
                    }
                    .buttonStyle(.borderedProminent)
                    Spacer()
                    
                    Button("Awesome") {
                        // this is the action performed when the button is pressed
                        messageString = "You are Awesome!"
                    }
                    .buttonStyle(.borderedProminent)
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
