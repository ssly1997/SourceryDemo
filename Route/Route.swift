//
//  Route.swift
//  Route
//
//  Created by 李方长 on 2023/8/25.
//

import Foundation

public protocol Route {
  var scheme: String { get }
  var domain: String { get }
  var path: String { get }
  var route: String { get }
  var params: Codable? { get }
  
  init()
  init(path: String)
}

extension Route {
  public var domain: String { "" }
  
  public var route: String {
    var _route = ""
    let _domain = domain.isEmpty ? "" : "\(domain)."
    _route = "\(scheme)://\(_domain)\(path)".removeTrailing(char: "/")
    guard let params else { return _route }
    guard !simpleType(params) else { return _route + "?\(params)" }
    if let json = params.json, !json.isEmpty {
      _route += "?"
      for (key, value) in json {
        _route += "\(key)=\(value)&"
      }
    }
    return _route.removeTrailing(char: "&")
  }
  
  public var params: Codable? { nil }
  
  public init() {
    self.init(path: "")
  }
  
  func simpleType(_ type: Any) -> Bool {
    return type is Int || type is String || type is Double || type is Float
  }
}

extension String {
  fileprivate func removeTrailing(char: Character) -> String {
    if self.last == char {
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

extension Encodable {
  var json: [String: Any]? {
    do {
      let data = try JSONEncoder().encode(self)
      guard let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else { return [:] }
      return json
    } catch let error {
      assertionFailure(error.localizedDescription)
      return nil
    }
  }
}
