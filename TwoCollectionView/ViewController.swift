//
//  ViewController.swift
//  TwoCollectionView
//
//  Created by Ipung Dev Center on 08/06/20.
//  Copyright © 2020 Banyu Center. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    
    @IBOutlet weak var collectionViewA: UICollectionView!
    
    @IBOutlet weak var collectionViewB: UICollectionView!
    
    let dataA = [
        (nama: "Ramen Spicy", gambar: "food1", harga:"560000"),
        (nama: "Steak", gambar: "food2", harga:"660000"),
        (nama: "Bakso", gambar: "food3", harga:"660000"),
        (nama: "Mie Ayam", gambar: "food4", harga:"660000"),
        (nama: "Pizza",  gambar: "food5", harga:"660000"),
        (nama: "Burger", gambar: "food6", harga:"760000"),
        (nama: "Siomay", gambar: "food7", harga:"860000"),
        (nama: "Cenil", gambar: "food8", harga:"460000")
    
    ]
    
    let dataB = [
        (nama: "Amar Hotel", gambar: "hotel1", harga:"560000"),
        (nama: "Lazy Hotel", gambar: "hotel2", harga:"660000"),
        (nama: "Doran Hotel", gambar: "hotel3", harga:"660000"),
        (nama: "Ibis Hotel", gambar: "hotel4", harga:"660000"),
        (nama: "Luxio Hotel",  gambar: "hotel5", harga:"660000"),
        (nama: "Yowes HoteL", gambar: "hotel6", harga:"760000"),
        (nama: "Amanda Hotel", gambar: "hotel7", harga:"860000"),
        (nama: "Makka Hotel", gambar: "hotel8", harga:"460000")
    
    ]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.self == collectionViewA {
            return dataA.count
        }
        else {
            
            return dataB.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.self == collectionViewA {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! DataCollectionViewCell
            
            cell.imgCollectionA.image = UIImage(named: dataA[indexPath.row].gambar)
            cell.labelCollectionA.text = dataA[indexPath.row].nama
            
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! DataCollectionViewCell
            
            cell.imgCollectionB.image = UIImage(named: dataB[indexPath.row].gambar)
            cell.labelCollectionB.text = dataB[indexPath.row].nama
            
            
            return cell
        }
        
    }
    



    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionViewA.delegate = self
        collectionViewA.dataSource = self
        collectionViewB.delegate = self
        collectionViewB.dataSource = self
    }
    

    


}

