//
//  ViewModel.swift
//  GarageF1Images
//
//  Created by Rafael Penna on 18/01/23.
//

import UIKit

class ViewModel {
    
    private var listDrivers:[Drivers] = []
    
    init(){
        self.configBoardDriversInformation()
    }
    
    private func configBoardDriversInformation(){
        listDrivers.append(Drivers(position: "1", driversPhoto: UIImage(named: "Leclerc") ?? UIImage(), driversName: "Charles Leclerc", teamsName: "Ferrari", currentcurrentPoints: "86"))
        listDrivers.append(Drivers(position: "2", driversPhoto: UIImage(named: "Max") ?? UIImage(), driversName: "Max Verstappen", teamsName: "Red Bull Racing", currentcurrentPoints: "80"))
        listDrivers.append(Drivers(position: "3", driversPhoto: UIImage(named: "Perez") ?? UIImage(), driversName: "Sergio Perez", teamsName: "Red Bull Racing", currentcurrentPoints: "74"))
        listDrivers.append(Drivers(position: "4", driversPhoto: UIImage(named: "sainz") ?? UIImage(), driversName: "Carlos Sainz", teamsName: "Ferrari", currentcurrentPoints: "62"))
        listDrivers.append(Drivers(position: "5", driversPhoto: UIImage(named: "Norris") ?? UIImage(), driversName: "Lando Norris", teamsName: "McLaren", currentcurrentPoints: "55"))
        listDrivers.append(Drivers(position: "6", driversPhoto: UIImage(named: "Hamilton") ?? UIImage(), driversName: "Lewis Hamilton", teamsName: "Mercedes", currentcurrentPoints: "42"))
        listDrivers.append(Drivers(position: "7", driversPhoto: UIImage(named: "Vettel") ?? UIImage(), driversName: "Sebastian Vettel", teamsName: "Aston Martin", currentcurrentPoints: "33"))
        listDrivers.append(Drivers(position: "8", driversPhoto: UIImage(named: "Leclerc") ?? UIImage(), driversName: "George Russel", teamsName: "Mercedes", currentcurrentPoints: "28"))
        listDrivers.append(Drivers(position: "9", driversPhoto: UIImage(named: "Bottas") ?? UIImage(), driversName: "Valtteri Bottas", teamsName: "Alfa Romeo", currentcurrentPoints: "20"))
        listDrivers.append(Drivers(position: "10", driversPhoto: UIImage(named: "Leclerc") ?? UIImage(), driversName: "Charles Leclerc", teamsName: "McLaren", currentcurrentPoints: "14"))
        listDrivers.append(Drivers(position: "11", driversPhoto: UIImage(named: "Leclerc") ?? UIImage(), driversName: "Charles Leclerc", teamsName: "McLaren", currentcurrentPoints: "10"))
        listDrivers.append(Drivers(position: "12", driversPhoto: UIImage(named: "Leclerc") ?? UIImage(), driversName: "Charles Leclerc", teamsName: "Alfa Romeo", currentcurrentPoints: "6"))
    }
    
    public var numberOfDrivers: Int {
        return listDrivers.count
    }
    
    public func loadCurrentDriver(indexPath: IndexPath) -> Drivers {
        return listDrivers[indexPath.row]
    }
    
    public func getPosition(indexPath: IndexPath) -> String {
        return listDrivers[indexPath.row].position
    }
    
    public func getPhoto(indexPath: IndexPath) -> UIImage {
        return listDrivers[indexPath.row].driversPhoto
    }
    
    public func getName(indexPath: IndexPath) -> String {
        return listDrivers[indexPath.row].driversName
    }
    
    public func getTeam(indexPath: IndexPath) -> String {
        return listDrivers[indexPath.row].teamsName
    }
    
    public func getPoints(indexPath: IndexPath) -> String {
        return listDrivers[indexPath.row].currentcurrentPoints
    }
    
}
