//
//  CustomTableViewCell.swift
//  GarageF1Images
//
//  Created by Rafael Penna on 18/01/23.
//

import Foundation
import UIKit

class CustomTableViewCell: UITableViewCell {
    
    var viewModel: CustomCellViewModel?
    
    var screen: CustomTableViewCellScreen = CustomTableViewCellScreen()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.screen.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.screen)
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    func setupCell(driver:Drivers){
        self.viewModel = CustomCellViewModel(data: driver)
        
        screen.positionLabel.text = viewModel?.getPosition
        screen.photoDriverImageView.image = viewModel?.getPhoto
        screen.nameLabel.text = viewModel?.getName
        screen.teamLabel.text = viewModel?.getTeam
        screen.pointsLabel.text = viewModel?.getPoints
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            screen.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            screen.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            screen.topAnchor.constraint(equalTo: self.topAnchor),
            screen.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
}
