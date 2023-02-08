//
//  MinusViewController.swift
//  kadai7-UIkit
//
//  Created by 渡邊魁優 on 2023/02/08.
//

import UIKit

class MinusViewController: UIViewController {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var reslutLabel: UILabel!
    private var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calclation(_ sender: Any) {
        let number1 = Int(textField1.text ?? "") ?? 0
        let number2 = Int(textField2.text ?? "") ?? 0
        result = number1 - number2
        update()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func update() {
        reslutLabel.text = String(result)
    }
}
