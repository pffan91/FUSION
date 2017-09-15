//
//  UserWorker.swift
//  FUSIONExample
//
//  Created by Vladyslav Semenchenko on 15/09/2017.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//
//  Powered by FUSION Architecture

import Foundation
import PromiseKit

class UserWorker: NSObject {
    
    // MARK: - Business Logic
    class func getUser() -> Promise<[User]> {
        return Promise { fulfill, reject in
            let user1: User = User.init(name: "User 1")
            let user2: User = User.init(name: "User 2")
            fulfill([user1, user2])
        }
    }
    
    // MARK: - Private
    
}
