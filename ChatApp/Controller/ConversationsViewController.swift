//
//  ConversationsViewController.swift
//  ChatApp
//
//  Created by Nikita on 24.01.2023.
//

import UIKit

final class ConversationsViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    @objc func showProfile() {
        print("Tap-tap-tap")
    }
 
    
}

private extension ConversationsViewController {
    
    func configureUI() {
        view.backgroundColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Messages"
        let image = UIImage(systemName: "person.circle.fill")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .plain, target: self, action:#selector(showProfile))
    }
}
