//
//  ContentView.swift
//  PrototipoSwiftUI
//
//  Created by Guillermo Navarro Gayango on 5/7/23.
//

import SwiftUI

struct ContentView: View {

    @State var counter: Int = 0
    @State var items = Array(1...100)

    private var lastItem: Int? {
        items.last
    }

    var body: some View {
        VStack(alignment: .leading) {
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
                            Image(systemName: "person.crop.circle")
                            /*.renderingMode(.original)*/
                            /*Si el icono usado tiene un color por defecto podremos usar el código comentado para ello*/
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                                .foregroundColor(.green)
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
            HStack {
                Text("Seguiores \(counter)")
                    .bold()
                Button("SEGUIR") {
                    self.counter += 1
                }
                .bold()
                .foregroundColor(.white)
                .frame(width: 120, height: 30)
                .background(.red)
                .cornerRadius(15)
            }
        }
        List(items, id: \.self) { item in
            Label("Video: \(item.description)",
                  image: "youtube")
            .onAppear {
                updateItems(item: item)
            }
            .listRowSeparator(.hidden)
            Line()
                .stroke(style: .init(dash: [6]))
                .foregroundStyle(.black)
                .frame(height: 1)
        }
        .scrollContentBackground(.hidden)
        .background(.blue.gradient.opacity(0.5))
    }

    private func updateItems(item: Int) {
        if let lastItem, lastItem == item {
            items += Array(lastItem...lastItem + 100)
        }
    }
}

struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))

        return path
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
