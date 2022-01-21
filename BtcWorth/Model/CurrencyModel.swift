//
//  CurrencyModel.swift
//  BtcWorth
//
//  Created by Admin on 20.01.2022.
//

import Foundation
import UIKit

struct CurrencyModel {
    var firstImage: UIImage
    var firstName: String
    var firstValue: Double
    var secondImage: UIImage
    var secondName: String
    var secondValue: Double
}

struct CryptoList {
    var name: String
    var image : UIImage
}

var currencyData: [CurrencyModel] = []

var cryptoList : [CryptoList] = [
    CryptoList(name: "BTC", image: UIImage(named: "BTC")!),
    CryptoList(name: "USDT", image: UIImage(named: "USDT")!),
    CryptoList(name: "BNB", image: UIImage(named: "BNB")!),
    CryptoList(name: "ETH", image: UIImage(named: "ETH")!),
    CryptoList(name: "PAX", image: UIImage(named: "PAX")!),
    CryptoList(name: "BUSD", image: UIImage(named: "BUSD")!),
    CryptoList(name: "USDC", image: UIImage(named: "USDC")!)
]
