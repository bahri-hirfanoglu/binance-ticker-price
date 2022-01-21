//
//  CollectionViewCell.swift
//  BtcWorth
//
//  Created by Admin on 20.01.2022.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var valueTextView: UITextField!
    
    func setup(with currency: CurrencyModel) {
        firstImageView.image = currency.firstImage
        firstLabel.text = currency.firstName
        secondImageView.image = currency.secondImage
        secondLabel.text = currency.secondName
        valueTextView.text = "\(currency.firstValue) ~ \(currency.secondValue)"
    }
}
