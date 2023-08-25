//
//  ModuleBRoute.swift
//  SourceryDemo
//
//  Created by 李方长 on 2023/8/25.
//

import Foundation

enum ModuleBRoute: SourceryRouteGenerator {
  case message
  case friend(Friend)
  case developer(Developer)
}

extension ModuleBRoute {
  enum Friend {
    case list
    case request(Request)
    case search
    
    enum Request {
      case detail
      case list
    }
  }
  
  enum Developer {
    case fileExplorer
    case web
  }
}
