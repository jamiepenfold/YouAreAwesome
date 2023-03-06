//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by jamie penfold on 2023/02/19.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    var body: some View {
        VStack{
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.red)
            HStack{
                Button("Great") {
                    // this is the action performed when the button is pressed
                    messageString = "You are Great!"
                }
                .buttonStyle(.borderedProminent)
                Button("Awesome") {
                    // this is the action performed when the button is pressed
                    messageString = "You are Awesome!"
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
