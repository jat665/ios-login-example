//
//  WelcomePage.swift
//  kripton2
//
//  Created by Jorge Arindia on 27/10/22.
//

import SwiftUI

struct WelcomePage: View {
  var body: some View {
    
    VStack {
      
      HStack {
        Spacer()
        
        Image("Logo")
        
        Spacer()
      }
      .frame(height: 200)
      .background(.red)
      
      VStack(alignment: .leading, spacing: 16) {
        Text("Comenzar ahora mismo")
          .fontWeight(.bold)
        
        Text("Te damos la bienvenida a ser parte de Urbano, empresa líder en distribución logística de última milla, con Kriptón HD podrás gestionar tus pedidos.")
      }.padding()
      
      Spacer()
      
      HStack {
        Spacer()
        
        Button("SIGUIENTE") {}
          .foregroundColor(.red)
          .padding()
      }
    }
  }
}

struct WelcomePage_Previews: PreviewProvider {
  static var previews: some View {
    WelcomePage()
  }
}
