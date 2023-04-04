//
//  ViewController.swift
//  Myjanken
//
//  Created by keigo.shiibashi on 2022/09/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var answerImageView: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    //じゃんけんを数字にし、変数で回す
    var answerNumber = 0
    
    @IBAction func shuffleAction(_ sender: Any){
        
        var newAnswerNumber = 0
        
        repeat{
            //0,1,2の数値をランダムに選出
            newAnswerNumber = Int.random(in: 0..<3)
        }while answerNumber == newAnswerNumber
        
        //新しいじゃんけんを格納
        answerNumber = newAnswerNumber
        
        if answerNumber == 0{
        
        answerLabel.text = "グー"
        answerImageView.image = UIImage(named:"gu")
            
        } else if answerNumber == 1{
            
            //チョキ
            answerLabel.text = "チョキ"
            answerImageView.image = UIImage(named:"choki")
            
        }else if answerNumber == 2{
            
            //パー
            answerLabel.text = "パー"
            answerImageView.image = UIImage(named:"pa")
            
       }
   }
}
