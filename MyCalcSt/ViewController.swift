//
//  ViewController.swift
//  MyCalcSt
//
//  Created by mickey on 8/8/21.
//

import UIKit

class ViewController: UIViewController {

    // View: Top price Field (from StoryBoard Component with Ctrl + Drug)
    @IBOutlet weak var priceField:
        UITextField!

    // View: Input buttons
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
    @IBAction func input00(_ sender: Any) {
        reflectField(price: "00")
    }
    @IBAction func inputClear(_ sender: Any) {
        clearField()
    }
    
    /*
       既存の料金フィールド値に、入力値を末尾に追加
     */
    func reflectField(price: String) -> Void {
        // 料金値を整形
        let letPrice = concatPrice(value: price)
        // 更新
        updateView(value: letPrice, field: priceField)
    }

    /*
      料金フィールドをクリアする
     */
    func clearField() -> Void {
        // クリア
        let letPrice = "0"
        // 更新
        updateView(value: letPrice, field: priceField)
    }

    /**
      入力文字をつなげる
     */
    func concatPrice(value: String) -> String {
        let newValue = priceField.text! + value
        // 処理失敗したらクリア
        guard let price = Int(newValue) else {
            return "\(priceField.text!)"
        }
        return "\(price)"
    }

    /**
      view を更新する。
     */
    func updateView(value: String, field: UITextField) -> Void {
        field.text = value
    }
    
    /**
      入力文字をつなげる
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    func didRecieveMemoryWarning() {
        // TODO: destruct memory out, or deprecated? otherwise override func prepare()?
        
    }

    /**
        アクション:結果から戻ったとき
     
        こちらでアクションを定義後に、StoryBoard上でExitへSegueをつなぎ、当アクションを指定して紐付ける。
     */
    @IBAction func restart(_ segue: UIStoryboardSegue) {
        clearField()
    }

    /**
        アクション:割引%を入力する 押下時
     
        押下時のイベントハンドラ。
        - 遷移先の画面へパラメータを渡す
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        let viewContoroller = segue.destination as! PercentViewController
        
        // パラメータを次画面へ
        if let price = Int(priceField.text!) {
            viewContoroller.price = price
        }
    }
}

