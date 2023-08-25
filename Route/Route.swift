//
//  Route.swift
//  Route
//
//  Created by 李方长 on 2023/8/25.
//

import Foundation

public protocol Route {
  var scheme: String { get }
  var path: String { get }
  var route: String { get }
  var domain: String { get }
  
  init()
  init(path: String)
}

extension Route {
  public var domain: String { "" }
  
  public var route: String {
    let _domain = domain.isEmpty ? "" : "\(domain)."
    return "\(scheme)://\(_domain)\(path)".removeTrailingBackslash()
  }
  
  public init() {
    self.init(path: "")
  }
}

extension String {
  fileprivate func removeTrailingBackslash() -> String {
    if self.last == "/" {
      return String(self.dropLast())
    }
    return self
  }
}

public struct DefaultRoute: Route {
  public var scheme: String { "default" }
  
  public var path: String
  
  public init(path: String) {
    self.path = path
  }
}
