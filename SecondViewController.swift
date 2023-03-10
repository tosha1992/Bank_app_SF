//
//  SecondViewController.swift
//  Bank_app_SF
//
//  Created by Anton Medovnik on 08.03.2023.
//

import Foundation
import UIKit

let resultBalance = ViewController()

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let frame = CGRect (x: 10, y: 20, width: 20, height: 20)
        let balanceCount = UILabel(frame: frame)
        
        view.backgroundColor = . green
        view.addSubview(balanceCount)
        balanceCount.backgroundColor = .white
        balanceCount.text = "\(resultBalance.topUpBalance())"

        
        
        balanceCount.translatesAutoresizingMaskIntoConstraints = false
        balanceCount.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -500).isActive = true
        balanceCount.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 90).isActive = true
        balanceCount.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -90).isActive = true
    }
}

