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
    
      @State var show = false
      @State var data = false
    
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
                    
                    HScrollView(data: self.$data, show: self.$show, size: g.frame(in: .global))
                    
                }
                
                padding(.bottom, (UIApplication.shared.windows.first?.safeAreaInsets.bottom)! + 10)
                
            }
          
        }
        
        .background(Color.black.opacity(0.07).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
        
        
    }
    
}

// Caroussel list

struct HScrollView : View {
    
    @Binding var data : [TravelData]
    //Foe expanding view...
    @Binding var show : Bool
    var size: CGRect
    
    var body: some View {
        
        HStack(spacing: 0){
            
            ForEach(self.data){i in
                
                ZStack{
                    Image(i.image)
                        .resizable()
                        .aspectRatio(1, contentMode: .fill)
                        .frame(width: self.size.width - 30, height: self.size.height)
                        // 'fill' will take extra space
                        .contentShape(Rectangle())

                }
                
              // fixed frame for carousel list...
                .frame(width: self.size.width, height: self.size.height)
               
            }
            
        }
        
    }
    
}

struct Carousel : UIViewRepresentable {
    typealias UIViewType = <#type#>
    
    func makeUIView(content: Context) -> UIScrollView {
        
    }
    
    func updateUIView() -> <#return type#> {
        <#function body#>
    }
}
