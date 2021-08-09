//
//  ResultViewController.swift
//  MyCalcSt
//
//  Created by mickey on 8/9/21.
//

import UIKit

class ResultViewController: UIViewController {

    // 初期画面の金額値
    var price: Int = 0;

    // 前画面のパーセンテージ値
    var percent: Int = 0;

    @IBOutlet weak var resultField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let letPercent = Float(percent) / 100
        let letDiscontPrice = Float(price) * letPercent
        let letDiscountedPrice = price - Int(letDiscontPrice)
        resultField.text = "\(letDiscountedPrice)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
