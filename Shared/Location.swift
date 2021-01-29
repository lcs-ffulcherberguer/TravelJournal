//
//  Location.swift
//  TravelJournal
//
//  Created by Fulcherberguer, Fernanda on 2021-01-28.
//

import Foundation


// Sample data

struct TravelData : Identifiable {
    
    var id: Int
    var image: String
    var country: String
    var place: String
    var details: String
    
}

var data = [

    TravelData(id: 0,
               image: "Rio de Janeiro",
               country: "Brazil",
               place: "Rio de Janeiro",
               details: "....."),
    
    
    TravelData(id: 1,
               image: "Santorini",
               country: "Greece",
               place: "Santorini",
               details: "....."),
    
    TravelData(id: 2,
               image: "Reykjavik",
               country: "Iceland",
               place: "Blue Lagoon",
               details: ".....")
    
    
    
    
]



