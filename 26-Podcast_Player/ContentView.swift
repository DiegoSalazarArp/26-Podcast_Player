//
//  ContentView.swift
//  26-Podcast_Player
//
//  Created by Diego Salazar Arp on 14-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let episode = Episode(name: "Macbreak Weekly", track: "WWWDC 2019")
    
    @State private var isPlaying = false
    
    var body: some View {
        VStack{
            Text(self.episode.name)
                .font(.title)
                .foregroundColor(self.isPlaying ? .green : .black)
            
            Text(self.episode.track)
                .foregroundColor(.secondary)
            
            PlayButton(tocando: $isPlaying)
        }
    }
}

struct PlayButton: View{
    
    @Binding var tocando: Bool
    
    var body: some View{
        Button(action: {
            self.tocando.toggle()
        }){
            Text("Play")
            .padding(12)
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
