//___FILEHEADER___
//  Powered by FUSION Architecture

import UIKit

class ___VARIABLE_sceneName___SceneConfigurator: NSObject {
    
    class func configure(inputData: ___VARIABLE_sceneName___SceneInputData) -> ___VARIABLE_sceneName___ViewController {
        let vc: ___VARIABLE_sceneName___ViewController = ___VARIABLE_sceneName___ViewController()
        vc.viewModel.inputData = inputData
        return vc
    }
    
    class func configure(storyboardName: String, viewControllerName: String, inputData: ___VARIABLE_sceneName___SceneInputData) -> ___VARIABLE_sceneName___ViewController? {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: viewControllerName) as? ___VARIABLE_sceneName___ViewController
        vc.viewModel.inputData = inputData
        return vc
    }
}
