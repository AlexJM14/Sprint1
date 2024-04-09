//
//  ContentView.swift
//  Sprint1
//
//  Created by Alex Jumbo on 3/4/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    let textos = ["El pollo esta muy rico","Mi perro se llama pancho","Invierte en Bitcoin ahora","Me gusta salir de fiesta"]
    @State var numText=0
    @State var numPalabra=0
    @State var texto1="frase 1"
    @State var texto2="frase 2"

    
    
    var body : some View{
        Text("Sprint 1").padding(50)
        
        VStack{
            HStack{
                Text(texto1).frame(width: 150,height: 100)
                Text(texto2).frame(width: 150,height: 100)
                }
            HStack{
                Image("gato").resizable().aspectRatio(contentMode:.fit).frame(width: 150, height:100)
                Image("perro").resizable().frame(width: 150, height:100)
            }
            Button(action: {
                numerosAleatorios()
            }) {
                Text("Cambia")
            }
            .padding(100)
        }
    }
    
    func numerosAleatorios() {
           numText = Int.random(in: 0...1)
           numPalabra = Int.random(in: 0...3)
        if numText==0 {
            texto1=textos[numPalabra]
        }else{
            texto2=textos[numPalabra]
        }
        
    }
    

}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}

