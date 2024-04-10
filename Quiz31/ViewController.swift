//
//  ViewController.swift
//  Quiz31
//
//  Created by TJ on 2022/04/09.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtNum1: UITextField!
    @IBOutlet weak var txtNum2: UITextField!
    @IBOutlet weak var totalNum: UITextField!
    @IBOutlet weak var lbMessage: UILabel!
    
    var num3 = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        lbMessage.text = "숫자를 입력해 주세요!"
    }

    @IBAction func btnAdd(_ sender: UIButton) {

        
        //Optional 문자를 가져오기 : Optional unwrapping
        guard let strNum1 = txtNum1.text else {return}
        guard let strNum2 = txtNum2.text else {return}
        
        //숫자필드에 Space Bar 나 Data를 안넣을경우
        let CheckNum1 = strNum1.trimmingCharacters(in: .whitespacesAndNewlines)
        let CheckNum2 = strNum2.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if CheckNum1.isEmpty || CheckNum2.isEmpty{
            lbMessage.text = "숫자를 확인하세요!"
        }else{
            
            let numNum1 = Int(CheckNum1)
            let numNum2 = Int(CheckNum2)
        
        
        //짝수 인지 홀수 인지 판단.
            if numNum1! % 2 == 0 && numNum2! % 2 == 0 {
            totalNum.text = String(numNum1! + numNum2!)
            lbMessage.text = "계산이 완료 되었습니다."
        }else{
            lbMessage.text = "짝수를 입력해주세요!"
        }
    }
        
        
    
        
        
//        var num1 : Int
//        var num2 : Int
//        num1 = Int(txtNum1.text!)!
//        num2 = Int(txtNum2.text!)!
//
//
//
//        if num1 % 2 == 0 && num2 % 2 == 0{
//
//            num3 = num1 + num2
//            totalNum.text = String(num3)
//
//            lbMessage.text = "계산 완료되었습니다."
//
//        }else{
//
//            totalNum.text?.removeAll()
//            lbMessage.text = "짝수를 입력해주세요 "
//        }
//
    }
    
}

