//
//  UserListCell.swift
//  FUSIONExample
//
//  Created by Vladyslav Semenchenko on 15/09/2017.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//
//  Powered by FUSION Architecture

import UIKit

protocol UserListCellProtocol: class {

}

class UserListCellItem: NSObject {
    let userName: String
    
    public init(userName: String) {
        self.userName = userName
    }
}

class UserListCell: UITableViewCell {
    
    // MARK: - Variables
    @IBOutlet weak var lblUserName: UILabel!
    weak var delegate: UserListCellProtocol?
    
    // MARK: - Base Class Overrides
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - Configurators
    func configureWith(item: UserListCellItem) {
        lblUserName.text = item.userName
    }
    
    // MARK: - User Interactions
    
    // MARK: - Private

}
