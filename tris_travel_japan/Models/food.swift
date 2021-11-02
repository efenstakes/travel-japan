//
//  food.swift
//  tris_travel_japan
//
//  Created by MAC on 11/2/21.
//

import Foundation


struct Food {
    var category: FoodCategory = .pizza
    var image: String
    var name: String
}


enum FoodCategory {
    case pizza, sushi, drinks, ramen, hotSoup, pasta
}


let foods: Array<Food> = [
    Food(category: .pizza, image: "pizza", name: "Pizza"),
    Food(category: .sushi, image: "sushi", name: "Sushi"),
    Food(category: .drinks, image: "tea", name: "Drinks"),
    Food(category: .pizza, image: "ramen", name: "Ramen"),
    Food(category: .pizza, image: "ramenn", name: "Pasta"),
]
