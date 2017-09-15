//
//  UserListViewModel.swift
//  FUSIONExample
//
//  Created by Vladyslav Semenchenko on 15/09/2017.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//
//  Powered by FUSION Architecture

import UIKit

class UserListViewModel: NSObject {
    
    // MARK: - Variables
    var cellItems: [UserListCellItem] = []
    var fetchedUsers: [User] = []
    
    // MARK: - Generators
    func generateCellItemsFrom(users: [User]) {
        fetchedUsers = users
        cellItems.removeAll()
        
        for user in users {
            let item = UserListCellItem.init(userName: user.name)
            cellItems.append(item)
        }
    }
    
    // MARK: - Private
    
}
