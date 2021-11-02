//
//  ContentView.swift
//  tris_travel_japan
//
//  Created by MAC on 11/2/21.
//

import SwiftUI

struct ContentView: View {
    @State var selectedChoice = "Popular"
    @State var selectedFood: UUID = foods[0].id
    
    var colors: [Color] = [ .red, .orange, .black, .blue ]
    
    let choices = [ "Popular", "Rating", "Recent" ]
    
    
    
    var body: some View {
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false) {
                 
             
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
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                
                
                // destinations
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(destinations) { destination in
                            
                            NavigationLink(
                                destination: DestinationDetailsPageView(destination: destination)
                            ) {
                                DestinationCard(destination: destination)
                            }
                            
                        }
                    }
                }
                .padding(.bottom)
                
                
                // foods
                Text("Japanese Foods")
                    .font(.title2)
                    .bold()
                    .padding([.leading, .top])
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(foods) { food in
                            FoodChoice(
                                food: food,
                                isSelected: food.id == selectedFood,
                                color: colors.randomElement()!
                            )
                            .onTapGesture {
                                selectedFood = food.id
                            }
                        }
                    }
                    .padding(.bottom, 40)
                }
                .padding(.bottom)
                
                
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(
                leading:
                    Text("Destinations")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.black.opacity(0.7))
                    .padding(.top, 88),
                trailing:
                        Image(systemName: "magnifyingglass")
                            .frame(width: 12, height: 12, alignment: .center)
                            .padding(.top, 88)
                            .foregroundColor(.gray)
            )
            
        }
    }
}


struct ChoicePicker: View {
    let choice: String
    let isSelected: Bool
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5) {
            
            Text(choice)
                .font(
                    .system(
                        size: 18,
                        weight: isSelected ? .semibold : .regular,
                        design: .rounded
                    )
                )
                .foregroundColor( isSelected ? .orange : .gray )
                .animation(.easeInOut)
            
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.orange)
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

struct DestinationCard: View {
    var destination: Destination
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            
            // Image
            Image(destination.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .frame(maxHeight: .infinity)
            
            // content
            VStack(alignment: .leading, spacing: 4) {
                
                Spacer()
                
                Text(destination.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                
                
                Text("\(destination.city), \(destination.country)")
                    .font(.body)
                    .bold()
                
            }
            .padding()
            .frame(width: 240, alignment: .leading)
            .foregroundColor(.white)
            
            
        }
        .clipped()
        .frame(width: 240, height: 360, alignment: .leading)
        .cornerRadius(28)
        .padding(.leading)
        .animation(.spring())
        
    }
}


struct FoodChoice: View {
    let food: Food
    let isSelected: Bool
    let color: Color
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 12) {
            
            // image
            Image(food.image)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40, alignment: .center)
                .padding(8)
                .background(
                    color.opacity(0.6)
                )
                .clipShape(Circle())
            
            Text(food.name)
                .font(.caption)
                .bold()
            
        }
        .frame(width: 80, height: 120, alignment: .center)
        .clipped()
        .background(Color.white)
        .cornerRadius(16)
        .shadow(
            color: .gray,
            radius: isSelected ? 10 : 0,
            x: 0,
            y: isSelected ? 10 : 0
        )
        .animation(.spring())
        .padding(.leading)
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
