//
//  ViewController.swift
//  appleRegister
//
//  Created by 唐澤 on 2018/05/28.
//  Copyright © 2018年 katorie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var taxLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberField.text = "1"
        priceLabel.text = "100"
        taxLabel.text = "7"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func okButtonTapped(_ sender: Any) {
        let amount: String? = String(Int(numberField.text!)! * 100)
        priceLabel.text = amount
        
        let tax: String? = String(Int(amount!)! * 8 / 108)
        taxLabel.text = tax
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! CheckoutViewController
        
        if let price = Int(priceLabel.text!) {
            viewController.price = price
        }
    }
    
    @IBAction func restart(_ segue: UIStoryboardSegue) {
//        numberField.text = "1"
        self.viewDidLoad()
    }
}

