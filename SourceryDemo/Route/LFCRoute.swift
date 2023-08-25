//
//  LFCRoute.swift
//  SourceryDemo
//
//  Created by 李方长 on 2023/8/25.
//

import Foundation
import Route

/// 只有BaseRoute的枚举可以遵循此协议
public protocol SourceryRouteGenerator {}

extension Route {
  var scheme: String { "lfc" }
  var domain: String { "happy" }
}

// sourcery: route_base
struct _LFCRoute: Route {
  var path: String
  
  init(path: String) {
    self.path = path
  }
}

let LFC = _LFCRoute()
