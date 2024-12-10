//
//  ContentView.swift
//  Navigation Example
//
//  Created by Tamara Nastevska on 10.12.24.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var age: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack(alignment: .leading) {
                    Text("Enter your name")
                    TextField("Name", text: $name)
                }
                VStack(alignment: .leading) {
                    Text("Enter your age")
                    TextField("Age", text: $age)
                }
                
                Spacer()
                NavigationLink {
                    DrinkingView(name: name, age: age)
                } label: {
                    Text("Okay")
                        .font(.title)
                        .padding()
                        .overlay(
                            Capsule()
                                .stroke()
                        )
                }
            }
            .padding()
            .navigationTitle("Navigation Example")
        }
    }
}

#Preview {
    ContentView()
}
