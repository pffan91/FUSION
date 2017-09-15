//
//  DetailedUserConfigurator.swift
//  FUSIONExample
//
//  Created by Vladyslav Semenchenko on 15/09/2017.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//
//  Powered by FUSION Architecture

import UIKit

class DetailedUserSceneConfigurator: NSObject {
    
    class func configure(inputData: DetailedUserSceneInputData) -> DetailedUserViewController {
        let vc: DetailedUserViewController = DetailedUserViewController()
        vc.viewModel.inputData = inputData
        return vc
    }
    
    class func configure(storyboardName: String, viewControllerName: String, inputData: DetailedUserSceneInputData) -> DetailedUserViewController? {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: viewControllerName)
        return vc as? DetailedUserViewController
    }
}
