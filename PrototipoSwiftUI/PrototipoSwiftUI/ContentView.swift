//
//  ContentView.swift
//  PrototipoSwiftUI
//
//  Created by Guillermo Navarro Gayango on 5/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            VStack {
                Text("Siguiendo")
                    .font(.largeTitle)
                    .bold()
            }
            Text("Canales recomendados")
                .foregroundColor(.gray)
            HStack {
                Image("youtube")
                /*.resizable(resizingMode: .tile)*/
                /*Esto sirve para crear un patrón con una imagen, descomentar y comentar el código siguiente para ver*/
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 96, height: 68)
                    .foregroundColor(.blue)
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
