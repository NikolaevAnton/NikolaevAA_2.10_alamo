//
//  ViewController.swift
//  NikolaevAA_2.10
//
//  Created by Anton Nikolaev on 25.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var infoLabel: UILabel!
    
    
    @IBAction func bellaButton(_ sender: Any) {
        NetworkManager.shared.fetchData(dataType: Model.self, from: Link.bella.rawValue){ [self] result in
            switch result {
            case .success(let model):
                self.infoLabel.text = model.description
            case .failure(let error):
                print(error)
            }
        }
    }
    
    @IBAction func jsonButton(_ sender: Any) {
        NetworkManager.shared.fetchDataWithAlamofire(Link.bella.rawValue) { result in
            switch result {
            case .success(let model):
                self.infoLabel.text = model.description
            case .failure(let error):
                print(error)
            }
        }
    }
}


