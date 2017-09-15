//
//  DetailedUserViewController.swift
//  FUSIONExample
//
//  Created by Vladyslav Semenchenko on 15/09/2017.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//
//  Powered by FUSION Architecture

import UIKit

class DetailedUserViewController: UIViewController {
    
    // MARK: - Variables
    @IBOutlet weak var lblUserName: UILabel!
    var viewModel: DetailedUserViewModel = DetailedUserViewModel()

    // MARK: - View Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        fetchData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - User Interaction
    
    // MARK: - Table View Delegate

    // MARK: - Cell Delegate

    // MARK: - Private
    private func configure() {
        lblUserName.text = viewModel.inputData?.user.name
    }
    
    private func fetchData() {
        // fetch extra data
    }
    
    private func updateViewModelWith(data: AnyObject) {
        // update view model if needed
    }
}
