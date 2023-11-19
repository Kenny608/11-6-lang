//
//  ContentView.swift
//  11-6
//
//  Created by Kenny Luchau on 11/17/23.
//

import SwiftUI

struct ContentView: View {
    @State var changeColor = false
    @State var name = ""
    @State var buttonNumber = 1
    let placeholder: LocalizedStringKey = "placeholder-label"
    let value = 3.1415
    let date: Date
    let dateFormatter: DateFormatter
    init() {
        date = Date()
        dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .medium
    }
    var body: some View {
        VStack {
            Text("greeting-label \(name)")
            Text("pi-label \(value)")
            Button("\(buttonNumber) button-label", action: {
                changeColor.toggle()
                buttonNumber += 1
            })
            TextField(placeholder, text: $name)
            Text(date, formatter: dateFormatter)
        }.background(changeColor ? Color.red : Color.yellow)
        VStack {
                    Text("Hello, world!")
                        .padding()
                        .background(Color.yellow)
                    Text("This is a lot of text to display in a small amount of space to test how well Xcode can truncate large amounts of text.")
                        .padding()
                        .background(Color.mint)
        //                .lineLimit(2)
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
                .environment(\.locale, .init(identifier: "en"))
            ContentView()
                .environment(\.locale, .init(identifier: "ja"))
        }
    }
}
