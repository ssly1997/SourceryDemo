//
//  ModuleARoute.swift
//  SourceryDemo
//
//  Created by 李方长 on 2023/8/25.
//

import Foundation

enum ModuleARoute: SourceryRouteGenerator {
  case account(Account)
  case profile(Profile)
  case game
}

extension ModuleARoute {
  enum Account {
    case login
    case logoff
    case bind(Bind)
    
    enum Bind {
      case google
      case wechat
      case email
    }
  }
  
  enum Profile {
    case edit(Edit)
    case user
    case settings
    case about
    
    enum Edit {
      case name
      case city
      case info
    }
  }
}
