//
//  ViewController.swift
//  GarageF1Images
//
//  Created by Rafael Penna on 18/01/23.
//

import UIKit

class DriversViewController: UIViewController {
    
    let viewModel: ViewModel = ViewModel()
    
    var screen: DriversScreenView?
    
    override func loadView() {
        self.screen = DriversScreenView()
        self.screen?.setupTableViewProtocols(delegate: self, dataSource: self)
        self.view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

}

extension DriversViewController: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfDrivers
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as? CustomTableViewCell
        cell?.setupCell(driver: viewModel.loadCurrentDriver(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(viewModel.getPosition(indexPath: indexPath))
        print(viewModel.getPhoto(indexPath: indexPath))
        print(viewModel.getName(indexPath: indexPath))
        print(viewModel.getTeam(indexPath: indexPath))
        print(viewModel.getPoints(indexPath: indexPath))
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
        
}


