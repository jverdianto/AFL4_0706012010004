//
//  ContentView.swift
//  UAS Jeffrey
//
//  Created by MacBook Pro on 23/05/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack{
            HStack{
                Text("Recommended Drinks")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(8.0)
                Spacer()
            }
            
            HStack{
                Image("Image")
                    .resizable()
                    .aspectRatio(3 / 2, contentMode: .fit)
                    .overlay {
                        TextOverlay()
                    }
            }
            
            HStack{
                Text("Drinks")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(8.0)
                Spacer()
            }
            
            HStack{
                Image("Image-1")
                    .resizable()
                    .frame(width: 155, height: 155)
                    .cornerRadius(5)
                Image("Image-2")
                    .resizable()
                    .frame(width: 155, height: 155)
                    .cornerRadius(5)
                Image("Image-3")
                    .resizable()
                    .frame(width: 155, height: 155)
                    .cornerRadius(5)
            }
            
            HStack{
                Text("Ingredients")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(8.0)
                Spacer()
            }
            
            HStack{
                Image("Image-4")
                    .resizable()
                    .frame(width: 155, height: 155)
                    .cornerRadius(5)
                Image("Image-5")
                    .resizable()
                    .frame(width: 155, height: 155)
                    .cornerRadius(5)
                Image("Image-6")
                    .resizable()
                    .frame(width: 155, height: 155)
                    .cornerRadius(5)
            }
                
                        
        }
        
        
        
    }
}

struct TextOverlay: View {
    
    var gradient: LinearGradient {
        .linearGradient(
            Gradient(colors: [.black.opacity(0.6), .black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            VStack(alignment: .leading) {
                Text("Cocktail")
                    .font(.title2)
                    .bold()
            }
            .padding()
        }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
