//
//  ContentView.swift
//  WhyNot Try?
//
//  Created by Anjali Kakade on 4/9/24.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]

    @State private var selected = "Baseball"
    @State private var id = 1
    var body: some View {
        VStack {
            Text("Why not try…")
                .font(.largeTitle.bold())
    
            
            VStack {
                Circle()
                    .fill(colors.randomElement() ?? .blue)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size: 144))
                            .foregroundColor(.white)
                    )
                

                Text("\(selected)!")
                    .font(.title)
                
            }
            .transition(.slide)
            .id(id)
            Button("Try again") {
                withAnimation(.easeInOut(duration: 1)){
                selected = activities.randomElement() ?? "Archery"
                    id += 1
                }
            }
            .buttonStyle(.borderedProminent)
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
