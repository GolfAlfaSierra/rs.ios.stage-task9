//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: John Kent
// On: 01.08.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class ItemCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupSelf()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupSelf()
    }
    
    let outerView: UIView = {
        let view = UIView()
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 18
        view.layer.borderColor = UIColor.black.cgColor
        view.backgroundColor = .white
        return view
    }()
    
    let innerView: UIImageView = {
        let view = UIImageView()
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.black.cgColor
        view.contentMode = .scaleAspectFill
        
        view.clipsToBounds = true
        return view
    }()
    
    let gradientLayer: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.colors = [
            UIColor.black.withAlphaComponent(0).cgColor,
            UIColor.black.withAlphaComponent(1).cgColor,
        ]
        gradient.locations = [0.74, 1]
        

        return gradient
    }()
    
    let subTextView: UILabel = {
        let tv = UILabel()
        let subtitleColor = UIColor(red: 0.712, green: 0.712, blue: 0.712, alpha: 1)
        
        tv.textColor = subtitleColor
        tv.font = UIFont(name: "Rockwell-Regular", size: 12)
        
        tv.text = "Story"
        
        return tv
    }()
    
    
    let titleTextView: UILabel = {
        let tv = UILabel()
        tv.textColor = .white
        tv.font = UIFont(name: "Rockwell-Regular", size: 16)
        tv.backgroundColor = .clear
        tv.text = "Man’s best friend"
        tv.numberOfLines = 0
        
        
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.1
        tv.attributedText = NSMutableAttributedString(string: tv.text!, attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])

        
        
        return tv
    }()
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        gradientLayer.frame.size = self.frame.size
    }
    
    private func setupSelf() {
        
        
        //        innerView.layer.insertSublayer(gradientLayer, at: 5)
        
        innerView.insertSubview(subTextView, at: 10)
        innerView.insertSubview(titleTextView, at: 10)
        
        outerView.addSubview(innerView)
        
        addSubview(outerView)
        
        makeConstraint()
    }
    
    func configureCell(data: ContentType) {
        switch data {
        case let .gallery(g):
            titleTextView.text = g.title
            subTextView.text = g.type
            innerView.image = g.coverImage
        case let .story(s):
            titleTextView.text = s.title
            subTextView.text = s.type
            innerView.image = s.coverImage
        }
        
        innerView.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    private func makeConstraint() {
        
        translatesAutoresizingMaskIntoConstraints = false
        outerView.translatesAutoresizingMaskIntoConstraints = false
        innerView.translatesAutoresizingMaskIntoConstraints = false
        subTextView.translatesAutoresizingMaskIntoConstraints = false
        titleTextView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            widthAnchor.constraint(equalToConstant: 179),
            heightAnchor.constraint(equalToConstant: 240),
            
            outerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            outerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            outerView.topAnchor.constraint(equalTo: topAnchor),
            outerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            innerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            innerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            innerView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            innerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            
            
            subTextView.widthAnchor.constraint(equalToConstant: 138),
            subTextView.heightAnchor.constraint(equalToConstant: 14),
            subTextView.leadingAnchor.constraint(equalTo: innerView.leadingAnchor, constant: 10),
            subTextView.trailingAnchor.constraint(equalTo: innerView.trailingAnchor, constant: -15),
            
            subTextView.bottomAnchor.constraint(equalTo: innerView.bottomAnchor, constant: -13),
            
            titleTextView.leadingAnchor.constraint(equalTo: innerView.leadingAnchor, constant: 10),
//            titleTextView.heightAnchor.constraint(equalToConstant: 19),
            titleTextView.trailingAnchor.constraint(equalTo: innerView.trailingAnchor, constant: -15),
            titleTextView.bottomAnchor.constraint(equalTo: innerView.bottomAnchor, constant: -30)
        ])
    }
}
