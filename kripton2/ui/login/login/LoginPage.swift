//
//  LoginPage.swift
//  kripton2
//
//  Created by Jorge Arindia on 27/10/22.
//

import SwiftUI

struct LoginPage: View {
  
  @StateObject private var viewModel = LoginViewModel()
  
  @State var username: String = "jarindia"
  @State var password: String = "jarindia"
  @State var isPasswordHidden: Bool = true
  var body: some View {
    
    GeometryReader { geometry in
      NavigationView {
        VStack {
          VStack(spacing: 16) {
            Image(systemName: "person")
              .foregroundColor(.white)
              .imageScale(.large)
            
            Text("Login")
              .foregroundColor(.white)
          }
          .frame(height: geometry.size.height * 0.4)
          
          VStack(spacing: 24) {
            HStack {
              Image(systemName: "person.circle")
                .frame(width: 50, height: 50)
                .imageScale(.large)
                .foregroundColor(.white)
                .background(.black)
                .clipShape(Circle())
              
              TextField(
                "",
                text: $username,
                prompt: Text("login_username_placeholder".localized).foregroundColor(.white.opacity(0.5))
              )
              .foregroundColor(.white)
              .autocapitalization(.none)
              
            }
            .background(.black.opacity(0.05))
            .cornerRadius(25)
            
            HStack {
              Image(systemName: "lock.circle")
                .frame(width: 50, height: 50)
                .imageScale(.large)
                .foregroundColor(.white)
                .background(.black)
                .clipShape(Circle())

              if (isPasswordHidden) {
                SecureField(
                  "",
                  text: $password,
                  prompt: Text("login_password_placeholder".localized).foregroundColor(.white.opacity(0.5))
                )
                .foregroundColor(.white)
                .autocapitalization(.none)

              } else {
                TextField(
                  "",
                  text: $password,
                  prompt: Text("login_password_placeholder".localized).foregroundColor(.white.opacity(0.5))
                )
                .foregroundColor(.white)
                .autocapitalization(.none)
              }
              
              Button(action: {
                isPasswordHidden.toggle()
              }) {
                if (isPasswordHidden) {
                  Image(systemName: "eye.fill")
                } else {
                  Image(systemName: "eye.slash.fill")
                }
              }
              .foregroundColor(.white)
              .padding()
            }
            .background(.black.opacity(0.05))
            .cornerRadius(25)
            
            
            Button(action: {
              viewModel.login(username: username, password: password)
            }) {
              Text("login_label".localized)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, minHeight: 50)
            }
            .background(.black)
            .cornerRadius(25)
            
            if let status = viewModel.status {
              Text(status)
            }
            
            Text("login_sign_up_label")
              .foregroundColor(.white)
          }
          .padding()
          
          Spacer()
          
          Text("login_forgot_password_label")
            .foregroundColor(.white)
        }
        .background(.red)
      }
    }
    .navigationBarHidden(true)
  }
}

struct LoginPage_Previews: PreviewProvider {
  static var previews: some View {
    LoginPage()
  }
}
