//
//  ViewController.swift
//  Bank_app_SF
//
//  Created by Anton Medovnik on 08.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @objc let mybalanceButton = CustomButton ()
    @objc let cashMoneyButton = CustomButton ()
    let paybalanceBtn = CustomButton ()
    var finalBalance: Float = 1000.00
    
    func showResultSumm () -> Float {
        return self.finalBalance
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        navigationItem.title = "My banking app"
        setupButtonConstraints()
        
        //Кнопка "Показать баланс"
        mybalanceButton.setTitle("Show the balance", for: .normal)
        mybalanceButton.addTarget(self, action: #selector(showMyBalance), for: .touchUpInside)
        
        //Кнопка "Пополнить баланс"
        cashMoneyButton.setTitle("Top up balance", for: .normal)
        cashMoneyButton.addTarget(self, action: #selector(topUpBalance), for: .touchUpInside)
        
        
        paybalanceBtn.setTitle("Pay balance", for: .normal)
     
    }
    
    
    func setupButtonConstraints () {
        mybalanceButton.backgroundColor = .white
        cashMoneyButton.backgroundColor = .white
        paybalanceBtn.backgroundColor = .white
        view.addSubview(mybalanceButton)
        view.addSubview(cashMoneyButton)
        view.addSubview(paybalanceBtn)
        
    
        mybalanceButton.translatesAutoresizingMaskIntoConstraints = false
        mybalanceButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -500).isActive = true
        mybalanceButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 90).isActive = true
        mybalanceButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -90).isActive = true
        
        cashMoneyButton.translatesAutoresizingMaskIntoConstraints = false
        cashMoneyButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -450).isActive = true
        cashMoneyButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 90).isActive = true
        cashMoneyButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -90).isActive = true
        
        paybalanceBtn.translatesAutoresizingMaskIntoConstraints = false
        paybalanceBtn.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -400).isActive = true
        paybalanceBtn.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 90).isActive = true
        paybalanceBtn.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -90).isActive = true
   }
    
    
    @objc func showMyBalance () {
        mybalanceButton.addTarget(self, action: #selector(getter: self.mybalanceButton), for: .touchUpInside)
        let showBalanceController = SecondViewController ()
        navigationController?.pushViewController(showBalanceController, animated: true)
    }

    @objc func topUpBalance () -> Float {
        
        mybalanceButton.addTarget(self, action: #selector(getter: cashMoneyButton), for: .touchUpInside)
        let alert = UIAlertController (title: "My Bank app", message: "Enter amount", preferredStyle: .alert)
        alert.addTextField(configurationHandler: {(summ) in
            summ.placeholder = "USD"
        })
        alert.addAction(UIAlertAction(title: "Top app", style: .default, handler: { [self](_) in
            if let field:UITextField = alert.textFields?.first {
                if let text = field.text, !text.isEmpty {
                    let enteredresult = Float (field.text!)
                    self.finalBalance = finalBalance + enteredresult!
                    print(self.finalBalance)
                    }
            }
        }))
                    
        present(alert, animated: true, completion: nil)
        return finalBalance
    }
}
    


