//
//  CustomTableViewCellScreen.swift
//  GarageF1Images
//
//  Created by Rafael Penna on 18/01/23.
//

import UIKit

class CustomTableViewCellScreen: UIView {
    
    lazy var positionLabel: UILabel = {
        let positionLabel = UILabel()
        positionLabel.translatesAutoresizingMaskIntoConstraints = false
        return positionLabel
    }()
    
    lazy var backgroundPhoto: UIImageView = {
        let background = UIImageView()
        background.translatesAutoresizingMaskIntoConstraints = false
        background.image = UIImage(named: "back")
        return background
    }()
        
    lazy var photoDriverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        return nameLabel
    }()
    
    lazy var teamLabel: UILabel = {
        let teamLabel = UILabel()
        teamLabel.translatesAutoresizingMaskIntoConstraints = false
        return teamLabel
    }()
    
    lazy var pointsLabel: UILabel = {
        let pointsLabel = UILabel()
        pointsLabel.translatesAutoresizingMaskIntoConstraints = false
        return pointsLabel
    }()
    
    lazy var ptsLabel: UILabel = {
        let pts = UILabel()
        pts.translatesAutoresizingMaskIntoConstraints = false
        pts.text = "pts"
        return pts
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubViews()
        self.configConstraintsInfoDriver()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func addSubViews(){
        self.addSubview(self.positionLabel)
        self.addSubview(self.backgroundPhoto)
        self.addSubview(self.photoDriverImageView)
        self.addSubview(self.nameLabel)
        self.addSubview(self.teamLabel)
        self.addSubview(self.pointsLabel)
        self.addSubview(self.ptsLabel)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            positionLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            positionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            
            backgroundPhoto.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            backgroundPhoto.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            backgroundPhoto.heightAnchor.constraint(equalToConstant: 40),
            backgroundPhoto.widthAnchor.constraint(equalToConstant: 40),

            photoDriverImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            photoDriverImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            photoDriverImageView.heightAnchor.constraint(equalToConstant: 40),
            photoDriverImageView.widthAnchor.constraint(equalToConstant: 40),

            nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 90),

            teamLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            teamLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 90),

            pointsLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            pointsLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),

            ptsLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            ptsLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8)
            
        ])
    }
}

