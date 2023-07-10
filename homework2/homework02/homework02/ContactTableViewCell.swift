//
//  ContactTableViewCell.swift
//  homework02
//
//  Created by Анастасия Фуреева on 10.07.2023.
//

import UIKit
class ContactTableViewCell: UITableViewCell {
    private let contactImageView = UIImageView()
    private let contactNameLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contactImageView.contentMode = .scaleAspectFit
        contentView.addSubview(contactImageView)
        
        contactNameLabel.font = UIFont.systemFont(ofSize: 16)
        contentView.addSubview(contactNameLabel)
        
        contactImageView.translatesAutoresizingMaskIntoConstraints = false
        contactNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contactImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            contactImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            contactImageView.widthAnchor.constraint(equalToConstant: 40),
            contactImageView.heightAnchor.constraint(equalToConstant: 40),
            
            contactNameLabel.leadingAnchor.constraint(equalTo: contactImageView.trailingAnchor, constant: 16),
            contactNameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with contact: (name: String, photo: String)) {
        contactImageView.image = UIImage(named: contact.photo)
        contactNameLabel.text = contact.name
    }
}

