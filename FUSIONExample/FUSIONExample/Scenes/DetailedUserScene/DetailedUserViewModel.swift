//
//  DetailedUserViewModel.swift
//  FUSIONExample
//
//  Created by Vladyslav Semenchenko on 15/09/2017.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//
//  Powered by FUSION Architecture

import UIKit

class DetailedUserViewModel: NSObject {
    
    // MARK: - Variables
    var cellItems: [AnyObject] = []
    var inputData: DetailedUserSceneInputData?

    // MARK: - Generators
    func generateCellItems() {
        cellItems.removeAll()
    }
    
    // MARK: - Private
    
}
