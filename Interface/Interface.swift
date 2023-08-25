//
//  Interface.swift
//  Interface
//
//  Created by 李方长 on 2023/8/25.
//

import Foundation

public struct AccountInfo: Codable {
  public let accont: String
  public let password: String
  
  public init(accont: String, password: String) {
    self.accont = accont
    self.password = password
  }
}

public struct BindInfo: Codable {
  public let value: String
  public let bindId: String
  
  public init(value: String, bindId: String) {
    self.value = value
    self.bindId = bindId
  }
}

public struct DetailInfo: Codable {
  public let value: String
  public let id: Int
  
  public init(value: String, id: Int) {
    self.value = value
    self.id = id
  }
}
