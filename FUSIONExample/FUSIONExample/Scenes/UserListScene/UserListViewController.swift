//
//  UserListViewController.swift
//  FUSIONExample
//
//  Created by Vladyslav Semenchenko on 15/09/2017.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//
//  Powered by FUSION Architecture

import UIKit
import PromiseKit

class UserListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Variables
    @IBOutlet weak var tableView: UITableView!
    var viewModel: UserListViewModel = UserListViewModel()

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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.cellItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userListCell", for: indexPath) as! UserListCell
        let item = viewModel.cellItems[indexPath.row]
        cell.configureWith(item: item)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let user = viewModel.fetchedUsers[indexPath.row]
        
        let inputData = DetailedUserSceneInputData.init(user: user)
        let vc = DetailedUserSceneConfigurator.configure(inputData: inputData)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    // MARK: - Cell Delegate

    // MARK: - Private
    private func configure() {
        // some extra configurations
    }
    
    private func fetchData() {
        UserWorker.getUser().then { users in
            self.updateViewModelWith(data: users)
        }.always {
            // for example dismiss loader
        }.catch { error in
            // for example show error
        }
    }
    
    private func updateViewModelWith(data: [User]) {
        viewModel.generateCellItemsFrom(users: data)
        tableView.reloadData()
    }
}
