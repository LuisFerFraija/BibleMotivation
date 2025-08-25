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
            ZStack {
                // Primera capa (recuadro externo)
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.purple.opacity(0.4))
                    .shadow(radius: 8)
                    .frame(maxWidth: .infinity, maxHeight: 420)

                // Segunda capa (recuadro interno)
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(.systemGray6))
                    .frame(maxWidth: .infinity, maxHeight: 400)
                    .padding(10)

                // Contenido
                VStack {
                    Image("fortaleza")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity, maxHeight: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(radius: 10)
                        .padding(.horizontal)

                    ScrollView {
                        Text(currentVerse.text)
                            .font(.title2)
                            .multilineTextAlignment(.center)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding()
                    }

                    Text(currentVerse.reference)
                        .font(.title3)
                        .bold()
                        .padding(.bottom, 8)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
            }
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

