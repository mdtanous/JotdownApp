//
//  ConversationsController.swift
//  JotdownApp
//
//  Created by Myles Tanous on 4/7/20.
//  Copyright © 2020 Myles Tanous. All rights reserved.
//

import UIKit

class ConversationsController: UIViewController {
    
        // MARK: - Properties
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI() {
         view.backgroundColor = .white
        navigationItem.title = "Messages"
     }
}

