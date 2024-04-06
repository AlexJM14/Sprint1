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

        HStack{
            VStack{
                Text(texto1).padding()
                Image("kfs").resizable().aspectRatio(contentMode:.fit).frame(width: 200, height:100)
            }
            VStack{
                Text(texto2).padding()
                Image("kfs").resizable().aspectRatio(contentMode:.fit).frame(width: 200, height:100)
            }
        }
        VStack{
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

