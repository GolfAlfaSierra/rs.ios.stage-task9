//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: John Kent
// On: 03.08.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class ItemDetailViewController: UIViewController {
    
    let item: ContentType
    var itemView: ItemDetailView?
    
    init(item: ContentType) {
        self.item = item
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSelf()

        // Do any additional setup after loading the view.
    }
    
    
    func setupSelf() {
        let v = ItemDetailView()
        self.view.addSubview(v)
        
        v.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            v.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            v.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            v.topAnchor.constraint(equalTo: self.view.topAnchor),
            v.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
        ])
        
    }
    

}
