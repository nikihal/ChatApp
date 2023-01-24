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
        configureNavigationBar()
    }
    
    @objc func showProfile() {
        print("Tap-tap-tap")
    }
 
    
}

private extension ConversationsViewController {
    
    func configureUI() {
        view.backgroundColor = .white
        let image = UIImage(systemName: "person.circle.fill")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .plain, target: self, action:#selector(showProfile))
    }
    
    func configureNavigationBar() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.backgroundColor = .purple
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance

        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.overrideUserInterfaceStyle = .dark
        navigationItem.title = "Messages"
    }
}
