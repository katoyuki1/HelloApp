//
//  ViewController.swift
//  HelloApp
//
//  Created by katoyuki on 2020/05/15.
//  Copyright © 2020 yuki.kato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先にテキストフィールドの値を渡す
        resultViewController.name = textField1.text!
        
    }
    @IBAction func unwind(_ segue: UIStoryboardSegue){
    }


}

