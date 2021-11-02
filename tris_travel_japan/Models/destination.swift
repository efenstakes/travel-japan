//
//  destination.swift
//  tris_travel_japan
//
//  Created by MAC on 11/2/21.
//

import Foundation



struct Destination: Identifiable {
    var id: UUID = UUID()
    var name: String
    var country: String
    var city: String
    var image: String
}


var destinations: Array<Destination> = [
    
    Destination(name: "Mount Fuji", country: "Japan", city: "Fujinomiya", image: "4"),
    Destination(name: "Mount Fuji", country: "Japan", city: "Fujinomiya", image: "5"),
    Destination(name: "Mount Fuji", country: "Japan", city: "Fujinomiya", image: "6"),
    Destination(name: "Mount Fuji", country: "Japan", city: "Fujinomiya", image: "7"),
    Destination(name: "Mount Fuji", country: "Japan", city: "Fujinomiya", image: "8"),
    Destination(name: "Mount Fuji", country: "Japan", city: "Fujinomiya", image: "9"),
    Destination(name: "Mount Fuji", country: "Japan", city: "Fujinomiya", image: "1"),
    Destination(name: "Mount Fuji", country: "Japan", city: "Fujinomiya", image: "2"),
    Destination(name: "Mount Fuji", country: "Japan", city: "Fujinomiya", image: "3"),

]
