import Foundation

struct Post {
    let title: String
    let body: String
    let uuid: UUID
    let userUID: String
    
    init(title: String, body: String, userUID: String) {
        self.title = title
        self.body = body
        self.uuid = UUID()
        self.userUID = userUID
    }
    
    init?(from dict: [String: Any], andUUID uuid: UUID) {
        guard let title = dict["title"] as? String,
            let body = dict["body"] as? String,
            let userUID = dict["userUID"] as? String else {
                return nil
        }
        self.title = title
        self.body = body
        self.userUID = userUID
        self.uuid = uuid
    }
    
    var uuidStr: String {
        return uuid.uuidString
    }
    
    var fieldsDict: [String: Any] {
        return [
            "title": title,
            "body": body,
            "userUID": userUID
        ]
    }
}
