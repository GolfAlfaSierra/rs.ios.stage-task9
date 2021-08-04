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
    
    var collectionView: ItemsView?
    var layout: UICollectionViewFlowLayout?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        layout = UICollectionViewFlowLayout()
        layout?.itemSize = CGSize(width: 179, height: 240)
        
        collectionView = ItemsView(frame: .zero, collectionViewLayout: layout!)
        collectionView?.register(ItemCell.self, forCellWithReuseIdentifier: "MyCell")
        collectionView?.backgroundColor = .red
        collectionView?.delegate = self
        collectionView?.dataSource = self
        
        
        
        
        setupSelf()
    }
    
    
    func setupSelf() {
        let v = collectionView!
        view.addSubview(v)
        
        if collectionView != nil {
            collectionView?.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                collectionView!.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                collectionView!.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                collectionView!.topAnchor.constraint(equalTo: self.view.topAnchor),
                collectionView!.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
            ])
            
        }
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

    }
    
    
    
}

extension ItemsViewController: UICollectionViewDelegateFlowLayout {
    
}

extension ItemsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return FillingData.data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as! ItemCell
        
        let Data = FillingData.data[indexPath.row]
        
        cell.configureCell(data: Data)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //        let cell = collectionView.cellForItem(at: indexPath) as! ItemCell
        
        let data = FillingData.data[indexPath.row]
        let vc = ItemDetailViewController(item: data)
        present(vc, animated: true, completion: nil)
        
        
    }
    
}
