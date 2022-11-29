//
//  WelcomePage.swift
//  kripton2
//
//  Created by Jorge Arindia on 27/10/22.
//

import SwiftUI

struct WelcomePage: View {
  var body: some View {
    
    GeometryReader { geometry in
      NavigationView {
        VStack {
          
          HStack {
            Spacer()
            
            Image(ImageAssets.Logo.rawValue)
            
            Spacer()
          }
          .frame(height: geometry.size.height * 0.4)
          .background(.red)
          
          VStack(alignment: .leading, spacing: 16) {
            Text("welcome_title".localized)
              .fontWeight(.bold)
            
            Text("welcome_message".localized)
          }.padding()
          
          Spacer()
          
          HStack {
            Spacer()
            
            NavigationLink(destination: LoginPage()) {
              Text("next_label".localized)
                .foregroundColor(.red)
                .padding()
            }
          }
        }
      }
    }
  }
}

struct WelcomePage_Previews: PreviewProvider {
  static var previews: some View {
    WelcomePage()
  }
}
