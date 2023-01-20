//
//  DriversScreenView.swift
//  GarageF1Images
//
//  Created by Rafael Penna on 18/01/23.
//

import UIKit

class DriversScreenView: UIView {
    
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1)
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "CustomTableViewCell")
        return tableView
    }()
    
    lazy var topLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        // Precisa colocar a cor certa
        return label
    }()
   
    lazy var bottomLabel: UIButton = {
        let label = UIButton()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .gray
   //     label.addTarget(DriversInfoViewController.self, action: #selector(buttonAction), for: .touchUpInside)
        // Precisa colocar a cor certa
        return label
    }()
    
    lazy var driversLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Pilotos"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.tableView)
        self.addSubview(self.topLabel)
        self.addSubview(self.bottomLabel)
        self.addSubview(self.driversLabel)
        self.configConstraintsTableView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        self.tableView.delegate = delegate
        self.tableView.dataSource = dataSource
        
    }

    private func configConstraintsTableView(){
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: self.topAnchor, constant: 80),
            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -60),
            
            topLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            topLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            topLabel.topAnchor.constraint(equalTo: self.topAnchor),
            topLabel.heightAnchor.constraint(equalToConstant: 80),
            
            bottomLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            bottomLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            bottomLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            bottomLabel.heightAnchor.constraint(equalToConstant: 60),
            
            driversLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 25),
            driversLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
        ])
    }

    
}
