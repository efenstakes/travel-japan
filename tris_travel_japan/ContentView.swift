//
//  ContentView.swift
//  tris_travel_japan
//
//  Created by MAC on 11/2/21.
//

import SwiftUI

struct ContentView: View {
    
    let choices = [ "Popular", "Rating", "Recent" ]
    @State var selectedChoice = "Popular"
    
    
    var body: some View {
        NavigationView {
            
            VStack(alignment: .leading, spacing: 24) {
                
                // pickers
                HStack(alignment: .top, spacing: 32) {
                    ForEach(choices, id: \.self) { choice in
                        ChoicePicker(
                            choice: choice,
                            isSelected: selectedChoice == choice
                        )
                        .onTapGesture {
                            selectedChoice = choice
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                
            }
            .padding()
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(
                leading:
                    Text("Destinations")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.black.opacity(0.7))
                    .padding(.top, 56),
                trailing:
                    Image(systemName: "magnifyingglass")
                        .frame(width: 12, height: 12, alignment: .center)
                        .padding(.top, 56)
            )
            
        }
    }
}


struct ChoicePicker: View {
    let choice: String
    let isSelected: Bool
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 6) {
            
            Text(choice)
                .font(.body)
                .foregroundColor( isSelected ? .orange : .gray )
                .animation(.easeInOut)
            
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.red)
                .frame(
                    width: isSelected ? 20 : 0,
                    height: isSelected ? 6 : 0,
                    alignment: .leading
                )
                .scaleEffect(x: isSelected ? 1.0 : 0.0, y: 1, anchor: .leading)
                .animation(.spring())
                
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
