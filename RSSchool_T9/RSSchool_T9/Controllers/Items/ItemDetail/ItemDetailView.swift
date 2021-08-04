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
    
    let imagesContainer : UIStackView = {
        let sv = UIStackView()
        
        
        return sv
        
    }()
    
    let textContainer : UITextView = {
        let tv = UITextView()
        tv.clipsToBounds = true
        tv.textColor = .white
        
        tv.backgroundColor = .black
        tv.layer.borderWidth = 1
        tv.layer.borderColor = UIColor.white.cgColor
        tv.layer.cornerRadius = 8
        
        tv.contentInset = UIEdgeInsets(top: 30, left: 30, bottom: 30, right: 30)
        
        tv.isScrollEnabled = false
        
        return tv
    }()
    
    let headerView : UIView = {
        let view = UIView()
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        view.layer.masksToBounds = true
        
        //        view.contentMode = .scaleAspectFit
        
        return view
    }()
    
    let headerImage: UIImageView  = {
        let img = UIImageView()
        img.clipsToBounds = true
        img.contentMode = .scaleAspectFill
        
        return img
    }()
    
    let headerViewTitle: UILabel = {
        let lbl = UILabel()
        
        lbl.font = UIFont(name: "rockwell", size: 48)
        lbl.textAlignment = .left
        lbl.textColor = .white
        lbl.numberOfLines = 0
        
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.1
        lbl.attributedText = NSMutableAttributedString(string: "Man’s best \nfriend", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        
        
        
        lbl.text = "Minsk"
        
        lbl.sizeToFit()
        
        return lbl
    }()
    
    let headerViewSubTitle: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont(name: "rockwell", size: 24)
        
        lbl.textAlignment = .center
        
        
        
        lbl.clipsToBounds = true
        
        lbl.layer.borderWidth = 1
        lbl.layer.borderColor = UIColor.white.cgColor
        lbl.layer.cornerRadius = 8
        
        lbl.backgroundColor = .black
        
        lbl.textColor = .white
        
        lbl.text = "Story"
        
        //        var paragraphStyle = NSMutableParagraphStyle()
        //        paragraphStyle.lineHeightMultiple = 1.1
        //        lbl.attributedText = NSMutableAttributedString(string: lbl.text!, attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        
        
        return lbl
    }()
    
    let closeButton: UIImageView = {
        let btn = UIImageView()
        let img = UIImage(systemName: "xmark.circle")?.withConfiguration(UIImage.SymbolConfiguration(weight: .thin))
        btn.image = img
        btn.tintColor = .white
        
        return btn
        
    }()
    
    let horizontalRule: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let iconBlock: UITableView = {
        let view = UITableView()
        
        
        return view
    }()
    
    
    let contentView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    
    private func setupSelf() {
        self.backgroundColor = .black
        
        
        insertSubview(contentView, at: 0)
        contentView.insertSubview(closeButton, at: 1)
        contentView.insertSubview(headerView, at: 2)
        
        contentView.insertSubview(headerViewTitle, at: 1)
        contentView.insertSubview(headerViewSubTitle, at: 10)
        
        contentView.insertSubview(horizontalRule, at: 1)
        contentView.insertSubview(headerImage, at: 1)
        
        contentView.insertSubview(textContainer, at: 1)
        
        makeConstraints()
    }
    
    func configure(data: ContentType) {
        switch data {
        case let .gallery(g):
            headerImage.image = g.coverImage
            headerViewTitle.text = g.title
            headerViewSubTitle.text = g.type
        case let .story(s):
            headerImage.image = s.coverImage
            headerViewTitle.text = s.title
            headerViewSubTitle.text = s.type
            textContainer.text = s.text
            textContainer.sizeToFit()
        }
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
    }
    
    private func makeConstraints() {
        
        
        translatesAutoresizingMaskIntoConstraints = false
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        headerView.translatesAutoresizingMaskIntoConstraints = false
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        headerViewSubTitle.translatesAutoresizingMaskIntoConstraints = false
        headerViewTitle.translatesAutoresizingMaskIntoConstraints = false
        horizontalRule.translatesAutoresizingMaskIntoConstraints = false
        headerImage.translatesAutoresizingMaskIntoConstraints = false
        textContainer.translatesAutoresizingMaskIntoConstraints = false
        
        let heightAnchor = self.heightAnchor.constraint(equalTo: contentView.heightAnchor)
        heightAnchor.priority = UILayoutPriority(200)
        
        
        NSLayoutConstraint.activate([
            
            
            contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            contentView.topAnchor.constraint(equalTo: self.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            heightAnchor,
            contentView.widthAnchor.constraint(equalTo: self.widthAnchor),
            
            
            headerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            headerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            headerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            headerView.heightAnchor.constraint(equalToConstant: 500),
            
            headerImage.leadingAnchor.constraint(equalTo: headerView.leadingAnchor),
            headerImage.trailingAnchor.constraint(equalTo: headerView.trailingAnchor),
            headerImage.topAnchor.constraint(equalTo: headerView.topAnchor),
            headerImage.bottomAnchor.constraint(equalTo: headerView.bottomAnchor),
            
            headerViewSubTitle.widthAnchor.constraint(equalToConstant: 122),
            headerViewSubTitle.heightAnchor.constraint(equalToConstant: 40),
            headerViewSubTitle.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            headerViewSubTitle.centerYAnchor.constraint(equalTo: headerView.bottomAnchor),
            
            headerViewTitle.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 30),
            headerViewTitle.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -30),
            headerViewTitle.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -55),
            
            closeButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),
            closeButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            closeButton.widthAnchor.constraint(equalToConstant: 40),
            closeButton.heightAnchor.constraint(equalToConstant: 40),
            
            horizontalRule.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 100),
            horizontalRule.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -100),
            horizontalRule.heightAnchor.constraint(equalToConstant: 1),
            horizontalRule.topAnchor.constraint(equalTo: headerViewSubTitle.bottomAnchor, constant: 40),
            
            textContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            textContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            textContainer.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 220)
            
            
        ])
    }
}
