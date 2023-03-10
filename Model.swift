//
//  Model.swift
//  Bank_app_SF
//
//  Created by Anton Medovnik on 08.03.2023.
//

import Foundation
import UIKit




func sum (_ x:Float, _ y: Float) -> Float {
    let result = x+y
    return result
}

func showAlertBalanceWindow () {
    let alert = UIAlertController (title: "My Bank app", message: "Enter amount", preferredStyle: .alert)
    alert.addTextField(configurationHandler: {(summ) in
        summ.placeholder = "USD"
    })
    alert.addAction(UIAlertAction(title: "Top app", style: .default, handler: nil))
}

