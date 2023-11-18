//
//  ContentView.swift
//  11-6
//
//  Created by Kenny Luchau on 11/17/23.
//

import SwiftUI

struct ContentView: View {
    @State var changeColor = false
    @State var message = ""
    var placeholder: LocalizedStringKey = "placeholder-label"
    var body: some View {
        VStack {
            Text("greeting-label")
            Button("button-label", action: {
                changeColor.toggle()
            })
            TextField(placeholder, text: $message)
        }.background(changeColor ? Color.red : Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
                .environment(\.locale, .init(identifier: "en"))
            ContentView()
                .environment(\.locale, .init(identifier: "jp"))
        }
    }
}
