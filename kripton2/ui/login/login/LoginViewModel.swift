//
//  LoginViewModel.swift
//  kripton2
//
//  Created by Jorge Arindia on 2/11/22.
//

import Foundation

class LoginViewModel: ObservableObject {
  
  @Published var status: String?
  
  func login(username: String, password: String) {
    if (username != "jarindia") {
      status = "username error"
      return
    }
    if (password != "jarindia") {
      status = "password error"
      return
    }
    status = "logged user"
  }
}
