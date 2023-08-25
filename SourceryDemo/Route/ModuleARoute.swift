//
//  ModuleARoute.swift
//  SourceryDemo
//
//  Created by 李方长 on 2023/8/25.
//

import Foundation
import Interface

enum ModuleARoute: SourceryRouteGenerator {
  case account(Account)
  case profile(Profile)
  case game
}

extension ModuleARoute {
  enum Account {
    case login(AccountInfo)
    case logoff
    case bind(Bind, BindInfo)
    
    enum Bind {
      case google(BindInfo)
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
