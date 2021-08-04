//
// 📰 🐸
// Project: RSSchool_T9
//
// Author: John Kent
// On: 03.08.2021
//
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class ItemDetailView: UIScrollView {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupSelf()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSelf()
    }
    
    let headerView : UIView = {
        let view = UIView()
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.white.cgColor
        
        
        return view
    }()
    
    let headerImage: UIImageView  = {
        let img = UIImageView()
        
        
        return img
    }()
    
    let headerViewTitle: UILabel = {
        let lbl = UILabel()
        
        return lbl
    }()
    
    let headerViewSubTitle: UILabel = {
        let lbl = UILabel()
        
        return lbl
    }()
    
    let closeButton: UIButton = {
        let btn = UIButton()
        
        return btn
        
    }()
    
    let horizontalRule: UIView = {
        let view = UIView()
        
        return view
    }()
    
    let iconBlock: UIView = {
        let view = UIView()
        
        return view
    }()
    
    let textBlock: UITextView = {
        let view = UITextView()
        
        return view
    }()
    
    
    private func setupSelf() {
        self.backgroundColor = .black
        
        
        
        
//        addSubview(closeButton)
//        headerView.insertSubview(headerViewTitle, at: 10)
//        headerView.insertSubview(headerViewSubTitle, at: 10)
//
//        addSubview(horizontalRule)
        
        
    }
    
    private func makeConstraints() {
        
        
        NSLayoutConstraint.activate([
            headerView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            headerView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 20),
            headerView.topAnchor.constraint(equalTo: self.topAnchor, constant: -100)
        ])
    }
}
