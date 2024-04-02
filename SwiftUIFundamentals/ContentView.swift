//
//  ContentView.swift
//  SwiftUIFundamentals
//
//  Created by Lara Santos on 26/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = [
        Hike(name: "Photo of us", photo: "me-and-gabby", miles: 6.1),
        Hike(name: "A girl hiking", photo: "hike", miles: 5)
    ]
    
    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike)  // <- it shows the > on the cell, to allow for navigation. Implement navigation destination
                }
            }.navigationTitle("Hikes")
                .navigationDestination(for: Hike.self) { hike in
                    Text(hike.name)
                }
        }
    }
}

#Preview { // preview macro to present the view created above
    ContentView()
}

struct HikeCellView: View { //name this to something that 'tells a story'
    let hike: Hike // <-
    var body: some View {
        HStack(alignment: .top) {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))  //the order of where you chose the view modifiers matters. Showing this before the actual frame
                .frame(width: 100)
            
            VStack(alignment: .leading ){
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles") //string interpolation
            }
        }
    }
}
