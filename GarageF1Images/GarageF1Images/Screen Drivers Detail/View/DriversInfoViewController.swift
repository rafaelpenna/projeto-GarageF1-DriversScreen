//
//  DriversInfoViewCOntroller.swift
//  GarageF1Images
//
//  Created by Rafael Penna on 19/01/23.
//

import Foundation
import UIKit

class DriversInfoViewController: UIViewController {
    
    let viewModel: ViewModelDriverInfo = ViewModelDriverInfo()
    
    var screen: DriversInfoScreenView?
    
    
    override func loadView() {
        self.screen = DriversInfoScreenView()
        self.view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
