//
//  ContentView.swift
//  App
//
//  Created by Muiz on 06/03/22.
//

import SwiftUI
import ObjCModule

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Button("Show ObjCModule") {
                let o = FromCPP()
                o.print_hello_world_number(1)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
