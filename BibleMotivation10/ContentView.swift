//
//  ContentView.swift
//  BibleMotivation10
//
//  Created by Luis Fernando on 6/24/25.
//

import SwiftUI

struct ContentView: View {
    @State private var currentVerse = VerseRepository.randomVerse()

    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.purple)
                .frame(height: 120)
                .overlay(
                    VStack {
                        Text("\"\(currentVerse.text)\"")
                            .font(.headline)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 4)

                        Text(currentVerse.reference)
                            .font(.title3)
                            .bold()
                    }
                )
                .padding(.horizontal)

            Button("Nuevo versículo") {
                currentVerse = VerseRepository.randomVerse()
            }
            .font(.headline)
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 3)
        }
        .padding()
        .background(Color.cyan)
        .ignoresSafeArea()
    }
}
