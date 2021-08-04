//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: John Kent
// On: 03.08.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class ItemsView: UICollectionView {

    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
        setupSelf()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupSelf()
    }
    
    func setupSelf() {
        self.contentInset = UIEdgeInsets(top: 30, left: 20, bottom: 50, right: 20)
    }
    
}
