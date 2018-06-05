//
//  CheckoutViewController.swift
//  appleRegister
//
//  Created by 加藤理絵 on 2018/06/05.
//  Copyright © 2018年 katorie. All rights reserved.
//

import UIKit

class CheckoutViewController: UIViewController {
    
    var price: Int = 0

    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var depositText: UITextField!
    @IBOutlet weak var changeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        amountLabel.text = String(price)
        depositText.text = "0"
        changeLabel.text = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func checkoutButtonTapped(_ sender: Any) {
        let change: String = String(Int(depositText.text!)! - price)
        changeLabel.text = change
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
