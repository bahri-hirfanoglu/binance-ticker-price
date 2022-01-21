//
//  ViewController.swift
//  BtcWorth
//
//  Created by Admin on 20.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    let viewControllerModel = ViewControllerModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Change", style: .done, target: self, action: #selector(addTapped))
        print("viewDidLoad")
    }
    
    func load(){
        self.showOverlay()
        self.navigationItem.title = "\(appSetting.baseSymbol) - Worth"
        ApiService().loadTickerPrice(baseSymbol: appSetting.baseSymbol) {(result) in
            if result != nil {
                DispatchQueue.main.async {
                    self.hideOverlay()
                    self.collectionView.reloadData()
                }
            }
        }
    }
    
    func showOverlay(){
        let alert = UIAlertController(title: nil, message: "Please wait...", preferredStyle: .alert)
        let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.style = UIActivityIndicatorView.Style.medium
        loadingIndicator.startAnimating();
        alert.view.addSubview(loadingIndicator)
        present(alert, animated: true, completion: nil)
    }
    
    func hideOverlay() {
        dismiss(animated: false, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
        load()
    }
    
    @objc func addTapped (){
        currencyData.removeAll()
        collectionView.reloadData()
        performSegue(withIdentifier: "toChangeViewController", sender: nil)
    }
}



