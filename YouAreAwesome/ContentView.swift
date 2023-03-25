//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by jamie penfold on 2023/02/19.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    @State private var lastSoundNumber = -1
    @State private var audioPlayer: AVAudioPlayer!
    
    var body: some View {
            VStack{
                
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.red)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                    .padding()
                
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                    .shadow(radius: 30)
                    .padding()
                
                
                Spacer()
                
                HStack{
                    Button("Show Message") {
                        // this is the action performed when the button is pressed
                        let messages = ["You are Awesome!", "You are Great!", "You are Fantastic!", "Fabulous? That's You!", "You make me smile!", "When the Genius bar needs help, they call You!"]
                        
                        //messageString = messages[Int.random(in: 0...messages.count-1)]
                        var messageNumber: Int
                        repeat{
                            messageNumber = Int.random(in: 0...messages.count-1)
                        }while messageNumber == lastMessageNumber
                        
                        messageString = messages[messageNumber]
                        lastMessageNumber = messageNumber
                        
                        var imageNumber: Int
                        repeat{
                            imageNumber = Int.random(in: 0...9)
                        }while imageNumber == lastImageNumber
                                
                        imageName = "image\(imageNumber)"
                        lastImageNumber = imageNumber
                        
                        
                        var soundNumber: Int
                        repeat{
                            soundNumber = Int.random(in: 0...5)
                        }while soundNumber == lastSoundNumber
                        lastSoundNumber = soundNumber
                        
                        let soundName = "sound\(soundNumber)"
                        
                        guard let soundFile = NSDataAsset(name: soundName) else{
                            print("Could not read file named \(soundName)")
                            return
                        }
                        do{
                            audioPlayer = try AVAudioPlayer(data: soundFile.data)
                            audioPlayer.play()
                        } catch{
                            print("Error: \(error.localizedDescription) from creating audioPlayer.")
                        }
                        
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
