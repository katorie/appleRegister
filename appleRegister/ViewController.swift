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

    var init_number: Int = 1
    var init_price: Int = 100
    var init_tax: Int = 7
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberField.text = String(init_number)
        priceLabel.text = String(init_price)
        taxLabel.text = String(init_tax)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func okButtonTapped(_ sender: Any) {
        if let number = numberField.text, let int_number = Int(number) {
            let amount: String? = String(int_number * 100)
            if let amount = amount, let int_amount = Int(amount) {
                let tax: String? = String(int_amount * 8 / 108)
                priceLabel.text = amount
                taxLabel.text = tax
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! CheckoutViewController
        
        if let price = Int(priceLabel.text!) {
            viewController.price = price
        }
    }
    
    @IBAction func restart(_ segue: UIStoryboardSegue) {
        self.viewDidLoad()
    }
}

