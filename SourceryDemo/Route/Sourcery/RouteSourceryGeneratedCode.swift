// Generated using Sourcery 1.9.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Route
import Interface

// MARK: - 模版化生成 Route 代码
extension _LFCRoute {
  var account: Account { Account(path: path.appending("account/")) }
  
  struct Account: Route {
    var path: String
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute.Account {
  var login: Login { Login(path: path.appending("login/")) }
  
  struct Login: Route {
    var path: String
    
    private var _params: Optional<AccountInfo> = nil
    var params: Codable? { _params }
    
    func params(_ data: AccountInfo) -> Self {
      var variableSelf = self
      variableSelf._params = data
      return variableSelf
    }
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute.Account {
  var logoff: Logoff { Logoff(path: path.appending("logoff/")) }
  
  struct Logoff: Route {
    var path: String
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute.Account {
  var bind: Bind { Bind(path: path.appending("bind/")) }
  
  struct Bind: Route {
    var path: String
    
    private var _params: Optional<BindInfo> = nil
    var params: Codable? { _params }
    
    func params(_ data: BindInfo) -> Self {
      var variableSelf = self
      variableSelf._params = data
      return variableSelf
    }
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute.Account.Bind {
  var google: Google { Google(path: path.appending("google/")) }
  
  struct Google: Route {
    var path: String
    
    private var _params: Optional<BindInfo> = nil
    var params: Codable? { _params }
    
    func params(_ data: BindInfo) -> Self {
      var variableSelf = self
      variableSelf._params = data
      return variableSelf
    }
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute.Account.Bind {
  var wechat: Wechat { Wechat(path: path.appending("wechat/")) }
  
  struct Wechat: Route {
    var path: String
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute.Account.Bind {
  var email: Email { Email(path: path.appending("email/")) }
  
  struct Email: Route {
    var path: String
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute {
  var profile: Profile { Profile(path: path.appending("profile/")) }
  
  struct Profile: Route {
    var path: String
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute.Profile {
  var edit: Edit { Edit(path: path.appending("edit/")) }
  
  struct Edit: Route {
    var path: String
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute.Profile.Edit {
  var name: Name { Name(path: path.appending("name/")) }
  
  struct Name: Route {
    var path: String
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute.Profile.Edit {
  var city: City { City(path: path.appending("city/")) }
  
  struct City: Route {
    var path: String
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute.Profile.Edit {
  var info: Info { Info(path: path.appending("info/")) }
  
  struct Info: Route {
    var path: String
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute.Profile {
  var user: User { User(path: path.appending("user/")) }
  
  struct User: Route {
    var path: String
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute.Profile {
  var settings: Settings { Settings(path: path.appending("settings/")) }
  
  struct Settings: Route {
    var path: String
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute.Profile {
  var about: About { About(path: path.appending("about/")) }
  
  struct About: Route {
    var path: String
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute {
  var game: Game { Game(path: path.appending("game/")) }
  
  struct Game: Route {
    var path: String
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute {
  var message: Message { Message(path: path.appending("message/")) }
  
  struct Message: Route {
    var path: String
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute {
  var friend: Friend { Friend(path: path.appending("friend/")) }
  
  struct Friend: Route {
    var path: String
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute.Friend {
  var list: List { List(path: path.appending("list/")) }
  
  struct List: Route {
    var path: String
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute.Friend {
  var request: Request { Request(path: path.appending("request/")) }
  
  struct Request: Route {
    var path: String
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute.Friend.Request {
  var detail: Detail { Detail(path: path.appending("detail/")) }
  
  struct Detail: Route {
    var path: String
    
    private var _params: Optional<DetailInfo> = nil
    var params: Codable? { _params }
    
    func params(_ data: DetailInfo) -> Self {
      var variableSelf = self
      variableSelf._params = data
      return variableSelf
    }
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute.Friend.Request {
  var list: List { List(path: path.appending("list/")) }
  
  struct List: Route {
    var path: String
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute.Friend {
  var search: Search { Search(path: path.appending("search/")) }
  
  struct Search: Route {
    var path: String
    
    private var _params: Optional<String> = nil
    var params: Codable? { _params }
    
    func params(_ data: String) -> Self {
      var variableSelf = self
      variableSelf._params = data
      return variableSelf
    }
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute {
  var developer: Developer { Developer(path: path.appending("developer/")) }
  
  struct Developer: Route {
    var path: String
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute.Developer {
  var fileExplorer: FileExplorer { FileExplorer(path: path.appending("fileExplorer/")) }
  
  struct FileExplorer: Route {
    var path: String
    
    init(path: String) {
      self.path = path
    }
  }
}

extension _LFCRoute.Developer {
  var web: Web { Web(path: path.appending("web/")) }
  
  struct Web: Route {
    var path: String
    
    init(path: String) {
      self.path = path
    }
  }
}

