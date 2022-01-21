//
//  ChangeViewModel.swift
//  BtcWorth
//
//  Created by Admin on 21.01.2022.
//

import Foundation
import UIKit

extension ChangeViewController : UITableViewDelegate, UITableViewDataSource {
    
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return cryptoList.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as! ChangeTableCell
           cell.imageVew.image = cryptoList[indexPath.row].image
           cell.nameLabel.text = cryptoList[indexPath.row].name
           return cell
       }
    
       func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          appSetting.baseSymbol = cryptoList[indexPath.row].name
           _ = navigationController?.popViewController(animated: true)

      }
}
