//
//  WorldMap.swift
//  TravelJournal
//
//  Created by Fulcherberguer, Fernanda on 2021-02-04.
//

import SwiftUI

import MapKit
import SwiftUI

struct WorldMap: View {
    
    // Set a reference to the location store
    // This is a derived value passed as a parameter
    // So, @ObservedObject
    @ObservedObject var store: LocationStore
    
    
    // Centre at LCS, wide enough to show most of eastern North America
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 44.43922, longitude: -78.26571),
                        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    
    
            //.navigationTitle("Map")
        
    }


struct WorldMap_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WorldMap(store: testStore)
            
        }
    }
}

