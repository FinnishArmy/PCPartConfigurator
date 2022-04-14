//
//  ContentView.swift
//  PCPartConfigurator
//
//  Created by Ronny Valtonen on 4/14/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack{
            ZStack {
                Text("PC Part Configurator")
                    .foregroundColor(.white)
                    .position(x:190, y: 20)
                    .font(.largeTitle)
                Text("Pick parts. Build your PC.")
                    .foregroundColor(.white)
                    .position(x:190, y: 50)
                    .font(.headline)
                Text("This is the new way to pick your parts..")
                    .foregroundColor(.white)
                    .position(x: 190, y: 80)
                
                // Switch view button here:
                // https://www.youtube.com/watch?v=S1ORyDOzIKQ
                NavigationView {
                    VStack {
                        Text("PC Part Configurator")
                            .foregroundColor(.black)
                            .position(x:170, y: 0)
                            .font(.largeTitle)
                        Text("Pick parts. Build your PC.")
                            .foregroundColor(.black)
                            .position(x:170, y: -90)
                            .font(.headline)
                        Text("The new way to pick your parts.")
                            .foregroundColor(.black)
                            .position(x: 170, y: 0)
                        
                        NavigationLink(destination: BuildView()) {
                            Text("Start your build!")
                                .font(.title2)
                        }
                    }.padding()
                }
                .blendMode(.darken)
                // Remove the white background issue
                // https://stackoverflow.com/questions/61381033/swiftui-navigationview-with-transparent-background
                
                
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
