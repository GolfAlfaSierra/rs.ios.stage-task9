//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: John Kent
// On: 28.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class ItemsViewController: UIViewController {
    
    let tableview = ItemsView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSelf()
        // Do any additional setup after loading the view.
    }
    
    
    func setupSelf() {
        let v = ItemCell()
        view.addSubview(v)
        
        v.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        v.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        v.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

    }

}
