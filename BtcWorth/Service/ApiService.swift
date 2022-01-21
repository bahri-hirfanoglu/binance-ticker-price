//
//  ApiService.swift
//  BtcWorth
//
//  Created by Admin on 20.01.2022.
//

import Foundation
import UIKit

class ApiService {
    
    func loadTickerPrice(baseSymbol: String, completion: @escaping ([CurrencyModel]?) -> ()) {
        currencyData.removeAll()
        let url = URL(string: "https://api.binance.com/api/v3/ticker/price")
        URLSession.shared.dataTask(with: url!) { data, response, error in
            guard let data = data, error == nil else { print("nil"); completion(nil); return}
            do {
                let btcArr =  try JSONDecoder().decode([Response].self, from: data)
                for item in btcArr.filter({ $0.symbol.prefix(baseSymbol.count) == baseSymbol }) {
                    if item.symbol.count - baseSymbol.count < 5 {
                    DispatchQueue.main.async {
                        let firstImage = UIImage(named: baseSymbol) ?? UIImage(named: "404")
                        let secondName = item.symbol.suffix(item.symbol.count - baseSymbol.count)
                        let secondImage = UIImage(named: String(secondName)) ?? UIImage(named: "404")
                        let curr = CurrencyModel(firstImage: firstImage!, firstName: baseSymbol, firstValue: 1, secondImage: secondImage!, secondName: String(secondName), secondValue: Double(item.price)!)
                        currencyData.append(curr)
                    }
                    }
                }
                completion(currencyData)
            } catch let error as NSError {
                completion(nil)
                print("Failed to load: \(error.localizedDescription)")
            }
        }.resume()
    }
}
