//
//  ModuleBRoute.swift
//  SourceryDemo
//
//  Created by 李方长 on 2023/8/25.
//

import Foundation
import Interface

enum ModuleBRoute: SourceryRouteGenerator {
  case message
  case friend(Friend)
  case developer(Developer)
}

extension ModuleBRoute {
  enum Friend {
    case list
    case request(Request)
    case search(String)
    
    enum Request {
      case detail(DetailInfo)
      case list
    }
  }
  
  enum Developer {
    case fileExplorer
    case web
  }
}
