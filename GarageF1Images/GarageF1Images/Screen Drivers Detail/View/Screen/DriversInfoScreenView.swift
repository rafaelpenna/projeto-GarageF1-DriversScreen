//
//  DriversInfoScreenView.swift
//  GarageF1Images
//
//  Created by Rafael Penna on 19/01/23.
//

import UIKit

class DriversInfoScreenView: UIView {
    

    lazy var topLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        // Precisa colocar a cor certa
        return label
    }()
    
    lazy var firstName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.text = "Charles"
        return label
    }()
    
    lazy var lastName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Leclerc"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    lazy var driverPhoto: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "Leclerc1")
        return image
    }()
   
    lazy var bottomLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .gray
        // Precisa colocar a cor certa
        return label
    }()
    
    lazy var boardInfo: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1)
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.topLabel)
        self.addSubview(self.firstName)
        self.addSubview(self.lastName)
        self.addSubview(self.driverPhoto)
        self.addSubview(self.bottomLabel)
        self.addSubview(self.boardInfo)
        self.configConstraintsTableView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraintsTableView(){
        NSLayoutConstraint.activate([
            
            topLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            topLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            topLabel.topAnchor.constraint(equalTo: self.topAnchor),
            topLabel.heightAnchor.constraint(equalToConstant: 100),
            
            bottomLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            bottomLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            bottomLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            bottomLabel.heightAnchor.constraint(equalToConstant: 60),
            
            firstName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            firstName.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -40),
            
            lastName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            lastName.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -15),
            
            driverPhoto.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            driverPhoto.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor),
            driverPhoto.heightAnchor.constraint(equalToConstant: 100),
            driverPhoto.widthAnchor.constraint(equalToConstant: 100),
            
            boardInfo.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            boardInfo.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            boardInfo.topAnchor.constraint(equalTo: topLabel.bottomAnchor),
            boardInfo.bottomAnchor.constraint(equalTo: bottomLabel.topAnchor),
        ])
    }
}


