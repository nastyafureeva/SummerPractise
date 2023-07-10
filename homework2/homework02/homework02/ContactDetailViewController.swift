//
//  ContactDetailViewController.swift
//  homework02
//
//  Created by Анастасия Фуреева on 10.07.2023.
//

import UIKit
class ContactDetailViewController: UIViewController {
    private let contact: (name: String, photo: String)
    
    init(contact: (name: String, photo: String)) {
        self.contact = contact
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = contact.name
        
        let contactImageView = UIImageView(image: UIImage(named: contact.photo))
        contactImageView.contentMode = .scaleAspectFit
        view.addSubview(contactImageView)
        
        contactImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contactImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            contactImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            contactImageView.widthAnchor.constraint(equalToConstant: 200),
            contactImageView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
}

