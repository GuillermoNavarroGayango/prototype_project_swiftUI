//
//  ContentView.swift
//  PrototipoSwiftUI
//
//  Created by Guillermo Navarro Gayango on 5/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 8) {
                VStack {
                    Text("Siguiendo")
                        .font(.largeTitle)
                        .bold()
                }
                Text("Canales recomendados")
                    .foregroundColor(.gray)
                HStack {
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(width: 118, height: 68)
                    VStack(alignment: .leading)  {
                        HStack {
                            Circle()
                                .frame(width: 18, height: 18)
                                .foregroundColor(.blue)
                            Text("username")
                                .font(.headline)
                        }
                        Text("streaming de programación...")
                            .foregroundColor(.gray)
                        Text("Solo hablando")
                            .foregroundColor(.gray)
                    }
                }
            }
            Text("Suscribiros a SwiftBeta")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.red)
                .underline()
                .background(.black)
                .rotationEffect(.degrees(-20))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
