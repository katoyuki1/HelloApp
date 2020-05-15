//
//  ResultViewController.swift
//  HelloApp
//
//  Created by katoyuki on 2020/05/15.
//  Copyright © 2020 yuki.kato. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    // 2画面目のLabelを、StoryboardでこのViewControllerにIBOutletとして接続しておく
    @IBOutlet weak var label: UILabel!
    
    // 受け取るためのプロパティ（変数）を宣言しておく
    var name:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let result = name
        label.text = "こんにちは、\(result)さん"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let viewController:ViewController = segue.destination as! ViewController
        // 遷移元のテキストフィールドの値を初期化
        viewController.textField1.text = ""
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
