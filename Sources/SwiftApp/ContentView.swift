//
//  ContentView.swift
//  SwiftApp
//
//  Created by Gabriel Demetrios Lafis
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    @State private var userName = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                // Header
                VStack {
                    Text("Swift iOS App")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Text("Created by Gabriel Demetrios Lafis")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                // User Input
                VStack(alignment: .leading, spacing: 10) {
                    Text("Enter your name:")
                        .font(.headline)
                    
                    TextField("Your name", text: $userName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                }
                
                // Counter Section
                VStack(spacing: 15) {
                    Text("Counter: \(counter)")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    HStack(spacing: 20) {
                        Button(action: {
                            counter -= 1
                        }) {
                            Image(systemName: "minus.circle.fill")
                                .font(.title2)
                                .foregroundColor(.red)
                        }
                        
                        Button(action: {
                            counter += 1
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .font(.title2)
                                .foregroundColor(.green)
                        }
                    }
                    
                    Button("Reset") {
                        counter = 0
                    }
                    .buttonStyle(.bordered)
                }
                
                // Greeting
                if !userName.isEmpty {
                    Text("Hello, \(userName)! 👋")
                        .font(.title2)
                        .foregroundColor(.blue)
                        .padding()
                        .background(Color.blue.opacity(0.1))
                        .cornerRadius(10)
                }
                
                Spacer()
                
                // Footer
                Text("Built with SwiftUI")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            .padding()
            .navigationTitle("SwiftApp")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
