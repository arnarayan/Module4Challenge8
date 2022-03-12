//
//  ContentView.swift
//  Module4Challenge8
//
//  Created by Anand Narayan on 2022-03-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
  
        GeometryReader { geo in
            ScrollView{
                VStack(alignment:.leading) {
                    ForEach(1..<30) { index in
                        LazyVStack(alignment:.leading) {
                            //Text("\(String(index))")
                            Rectangle()
                                .foregroundColor(.orange)
                                .scaledToFit()
                                .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                        }.frame(width: geo.size.width, height: geo.size.height, alignment:.bottomTrailing)
                            .foregroundColor(.blue)
                    }
                }


                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
