//
//  CustomCellViewModel.swift
//  GarageF1Images
//
//  Created by Rafael Penna on 18/01/23.
//

import UIKit

class CustomCellViewModel {
    
    private var data: Drivers
    
    init(data:Drivers){
        self.data = data
    }
    
    public var getPosition: String {
        return data.position
    }
    
    public var getPhoto: UIImage {
        return data.driversPhoto
    }
    
    public var getName: String {
        return data.driversName
    }
    
    public var getTeam: String {
        return data.teamsName
    }
    
    public var getPoints: String {
        return data.currentcurrentPoints
    }

}
