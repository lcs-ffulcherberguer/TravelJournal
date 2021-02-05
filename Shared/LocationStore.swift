//
//  LocationStore.swift
//  TravelJournal
//
//  Created by Fulcherberguer, Fernanda on 2021-02-04.
//

import Foundation

class LocationStore: ObservableObject {
    
    var places: [TravelData]
    
    init() {
        
        // Get a pointer to the file
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        
        // Load the contants  of the JSON file
        let data = try! Data(contentsOf: url)
        
        // Convert the data from the JSON file into the array
        places = try! JSONDecoder().decode([TravelData].self, from: data)
        
        // Sort the list of locations alphabetically by name, in ascending order
        places.sort(by: {
            $0.image < $1.image
            
            
            
        })
        
        
        
    }
    
}

var testStore = LocationStore()

