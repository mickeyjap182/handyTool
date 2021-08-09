//
//  PercentViewController.swift
//  MyCalcSt
//
//  Created by mickey on 8/9/21.
//

import UIKit

class PercentViewController: UIViewController {

    // 金額
    var price :Int = 0

    @IBOutlet weak var percentField: UITextField!
    
    @IBAction func input1(_ sender: Any) {
        reflectField(price: "1")
    }

    @IBAction func input2(_ sender: Any) {
        reflectField(price: "2")
    }
    @IBAction func input3(_ sender: Any) {
        reflectField(price: "3")
    }
    @IBAction func input4(_ sender: Any) {
        reflectField(price: "4")
    }
    @IBAction func input5(_ sender: Any) {
        reflectField(price: "5")
    }
    
    @IBAction func input6(_ sender: Any) {
        reflectField(price: "6")
    }
    @IBAction func input7(_ sender: Any) {
        reflectField(price: "7")
    }
    
    @IBAction func input8(_ sender: Any) {
        reflectField(price: "8")
    }
    @IBAction func input9(_ sender: Any) {
        reflectField(price: "9")
    }
    
    @IBAction func input0(_ sender: Any) {
        reflectField(price: "0")
    }

    @IBAction func inputClear(_ sender: Any){
        clearField()
    }
    
    /*
       既存の料金フィールド値に、入力値を末尾に追加
     */
    func reflectField(price: String) -> Void {
        // 料金値を整形
        let letPrice = concatPrice(value: price)
        // 更新
        updateView(value: letPrice, field: percentField)
    }

    /*
      料金フィールドをクリアする
     */
    func clearField() -> Void {
        // クリア
        let letPrice = "0"
        // 更新
        updateView(value: letPrice, field: percentField)
    }

    /**
     入力文字をつなげる
     */
    func concatPrice(value: String) -> String {
        let newValue = percentField.text! + value
        // 処理失敗したらクリア
        guard let price = Int(newValue) else {
            return "\(percentField.text!)"
        }
        return "\(price)"
    }

    /**
      viewを更新する。
     */
    func updateView(value: String, field: UITextField) -> Void {
        field.text = value
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // TODO: destruct memory out, or deprecated?
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.

    /**
     
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let viewController = segue.destination as! ResultViewController

        // 完了画面へ
        viewController.price = price
        if let percent = Int(percentField.text!) {
            viewController.percent = percent
        }
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
