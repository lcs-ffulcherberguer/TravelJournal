//
//  ContentView.swift
//  Shared
//
//  Created by Fulcherberguer, Fernanda on 2021-01-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Home()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    var body: some View {
        
        ZStack {
            
            VStack {
                
                HStack {
                    
                    Text("Travel")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Text("1/5")
                        .foregroundColor(.gray)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding()
                
                GeometryReader{g in
                    
                    
                }
                
                
            }
          
        }
        
        .background(Color.black.opacity(0.07).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
        
        
    }
    
}
