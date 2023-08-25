//
//  main.swift
//  SourceryDemo
//
//  Created by 李方长 on 2023/8/25.
//

import Foundation

print(LFC.account.bind.google.params(.init(value: "er", bindId: "aa")).route)
print(LFC.profile.edit.name.route)
print(LFC.developer.fileExplorer.route)
print(LFC.friend.request.detail.params(.init(value: "asd", id: 999)).route)
print(LFC.account.bind.params(.init(value: "ad", bindId: "id")).route)
print(LFC.friend.search.params("asdasd").route)
