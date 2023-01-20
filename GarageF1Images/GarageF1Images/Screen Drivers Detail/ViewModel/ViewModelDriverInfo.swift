//
//  ViewModel.swift
//  GarageF1Images
//
//  Created by Rafael Penna on 19/01/23.
//

import UIKit

class ViewModelDriverInfo {
    
    private var listInfo:[DriverDetail] = []
    
    init(){
        self.configDriveInfo()
    }
    
    private func configDriveInfo(){
        listInfo.append(DriverDetail(driversPhoto: UIImage(named: "Leclerc1") ?? UIImage(), driversName: "Charles", driversLastName: "Leclerc", birthDate: "16/10/1997 (24 anos)", birthLocation: "Monte Carlo, Monaco", championships: 0, races: 92,podiums: 18, points: 730, bestResult: "1(x5)", bestGridPosition: 1))
    }
    
    
    public func loadCurrentDriver(indexPath: IndexPath) -> DriverDetail {
        return listInfo[indexPath.row]
    }
    
    public func getPhoto(indexPath: IndexPath) -> UIImage {
        return listInfo[indexPath.row].driversPhoto
    }
    
    public func getName(indexPath: IndexPath) -> String {
        return listInfo[indexPath.row].driversName
    }
    
    public func getLastName(indexPath: IndexPath) -> String {
        return listInfo[indexPath.row].driversLastName
    }
    
    public func getBirthDate(indexPath: IndexPath) -> String {
        return listInfo[indexPath.row].birthDate
    }
    
    public func getBirthLocation(indexPath: IndexPath) -> String {
        return listInfo[indexPath.row].birthLocation
    }
    
    public func getChampionships(indexPath: IndexPath) -> Int {
        return listInfo[indexPath.row].championships
    }
    
    public func getRaces(indexPath: IndexPath) -> Int {
        return listInfo[indexPath.row].races
    }
    
    public func getPodiums(indexPath: IndexPath) -> Int {
        return listInfo[indexPath.row].podiums
    }
    
    public func getPoints(indexPath: IndexPath) -> Int {
        return listInfo[indexPath.row].points
    }
    
    public func getBestResult(indexPath: IndexPath) -> String {
        return listInfo[indexPath.row].bestResult
    }
    
    public func getBestGridPosition(indexPath: IndexPath) -> Int {
        return listInfo[indexPath.row].bestGridPosition
    }
    
}
