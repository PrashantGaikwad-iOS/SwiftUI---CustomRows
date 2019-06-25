//
//  ContentView.swift
//  SwiftUI - CustomRows
//
//  Created by Saif on 25/06/19.
//  Copyright © 2019 LeftRightMind. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @State private var names = ["Prashant","Swapnil","Aman","Bhagyawant","1","2","3","4","5","6","7","8"]
    
    var body: some View {
        GeometryReader { geometry in
            NavigationView{
                ScrollView {
                    VStack(alignment:.leading) {
                        ForEach(self.names.identified(by: \.self)) { name in
                            NavigationButton(destination:Text(name)) {
                                NameRow(name:name)
                                }
                                .frame(width:geometry.size.width)
                        }
                    }
                    }.navigationBarTitle(Text("Friends"))
                
            }
        }
        
        
    }
}

struct NameRow : View {
    let name: String
    var body: some View {
        HStack {
            Text(name)
                .accentColor(.primary)
                .padding()
            .padding([.top,.bottom])
            
            Spacer()
            
            Image(systemName:"chevron.right")
                .foregroundColor(.blue)
                .padding(.trailing)
            }
            .background(Color.white)
            .cornerRadius(8)
            .shadow(color:.gray,radius: 1,y:1)
            .padding([.leading,.trailing])
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif


