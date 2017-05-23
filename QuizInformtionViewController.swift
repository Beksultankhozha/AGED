//
//  QuizInformtionViewController.swift
//  Restaraunts
//
//  Created by Бексултанхожа on 3/26/17.
//  Copyright © 2017 Бексултанхожа. All rights reserved.
//

import UIKit

class QuizInformtionViewController: UIViewController {
    
    
    
    
    var itr:Int = 0
    
    var quizblock: Quiz!
    
    var q1ID:Int = 0
    var q2ID:Int = 0
    var q3ID:Int = 0
    var q4ID:Int = 0
    var q5ID:Int = 0
    var q6ID:Int = 0
    var q7ID:Int = 0
    var q8ID:Int = 0
    var q9ID:Int = 0
    var q10ID:Int = 0
    var q11ID:Int = 0
    var q12ID:Int = 0
    var q13ID:Int = 0
    var q14ID:Int = 0
    var q15ID:Int = 0

    
    
    var checkBox = UIImage(named: "checkbox")
    var uncheckBox = UIImage(named: "uncheckbox")
    var isBoxClicked:Bool!
    
    //test bt
    var operationActive = 0
    var k:Int = 0
    var i:Int = 0
    
    var caseA = 0

    
    var hh:Int = 0
   
    
    
    @IBOutlet var questions: [UILabel]!
    
    @IBOutlet var answers: [UIButton]! // burron pervye 4
    

    
    
    @IBOutlet var answersLabel: [UILabel]!


    @IBOutlet weak var quizScroll: UIScrollView!
    

    
    @IBOutlet weak var resultLabel: UILabel!

    
 
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        q1ID = Int(quizblock.q1id)!
        q2ID = Int(quizblock.q2id)!
        q3ID = Int(quizblock.q3id)!
        q4ID = Int(quizblock.q4id)!
        q5ID = Int(quizblock.q5id)!
        q6ID = Int(quizblock.q6id)!
        q7ID = Int(quizblock.q7id)!
        q8ID = Int(quizblock.q8id)!
        q9ID = Int(quizblock.q9id)!
        q10ID = Int(quizblock.q10id)!
         q11ID = Int(quizblock.q11id)!
         q12ID = Int(quizblock.q12id)!
         q13ID = Int(quizblock.q13id)!
         q14ID = Int(quizblock.q14id)!
         q15ID = Int(quizblock.q15id)!
        
        print(q15ID)
        
        
        var massiv = [quizblock.q1a1,quizblock.q1a2,quizblock.q1a3,quizblock.q1a4,
                      quizblock.q2a1,quizblock.q2a2,quizblock.q2a3,quizblock.q2a4,
                      quizblock.q3a1,quizblock.q3a2,quizblock.q3a3,quizblock.q3a4,
                      quizblock.q4a1,quizblock.q4a2,quizblock.q4a3,quizblock.q4a4,
                      quizblock.q5a1,quizblock.q5a2,quizblock.q5a3,quizblock.q5a4,
                      quizblock.q6a1,quizblock.q6a2,quizblock.q6a3,quizblock.q6a4,
                      quizblock.q7a1,quizblock.q7a2,quizblock.q7a3,quizblock.q7a4,
                      quizblock.q8a1,quizblock.q8a2,quizblock.q8a3,quizblock.q8a4,
                      quizblock.q9a1,quizblock.q9a2,quizblock.q9a3,quizblock.q9a4,
                      quizblock.q10a1,quizblock.q10a2,quizblock.q10a3,quizblock.q10a4,
                      quizblock.q11a1,quizblock.q11a2,quizblock.q11a3,quizblock.q11a4,
                      quizblock.q12a1,quizblock.q12a2,quizblock.q12a3,quizblock.q12a4,
                      quizblock.q13a1,quizblock.q13a2,quizblock.q13a3,quizblock.q13a4,
                      quizblock.q14a1,quizblock.q14a2,quizblock.q14a3,quizblock.q14a4,
                      quizblock.q15a1,quizblock.q15a2,quizblock.q15a3,quizblock.q15a4 ]
       
        
        let questionLabel = [quizblock.q1,quizblock.q2,quizblock.q3,quizblock.q4,quizblock.q5,quizblock.q6,quizblock.q7,quizblock.q8,quizblock.q9,quizblock.q10,quizblock.q11,quizblock.q12,quizblock.q13,quizblock.q14,quizblock.q15]

        
        
        for index in 0...14{
            
            questions[index].text = questionLabel[index]
            
            
            
            
       //     questions[index].text = massiv[index]
            
        }
        
        for index in 0...59{
            
            answersLabel[index].text = massiv[index]
            
            answers[index].tag = index
            answers[index].setTitle("uncheckbox", for: .normal)
            

        }
    
        
       // self.navigationItem.backBarButtonItem?.tintColor = UIColor.orange
        self.navigationController?.navigationBar.tintColor = UIColor (colorLiteralRed: 228.0/255.0, green: 170.0/255.0, blue: 60.0/255.0, alpha: 1)

        
        isBoxClicked = false
        quizScroll.contentSize.height = 3187 + 150
        
        
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func CkickBox(_ sender: UIButton) {
        
        
        var ostk:Int = 0
        var pervyElement:Int = 0
        var  psldElement:Int = 0
        
      
        
        
        operationActive = sender.tag
        
        ostk = operationActive % 4
        pervyElement = operationActive - ostk
        psldElement = pervyElement + 3
        
        for index in pervyElement...psldElement{
            answers[index].setImage(checkBox, for: .normal)
            
           
        }
        
        
        
      
        if   answers[operationActive].image(for: .normal) == UIImage(named:"checkbox") {
            answers[operationActive].setImage(uncheckBox, for: .normal)
         
            
            
        }else {
            answers[operationActive].setImage(checkBox, for: .normal)
        }
        
        
       
        
/*
        if answers[operationActive].currentTitle == "uncheckbox" {
            answers[operationActive].setImage(uncheckBox, for: .normal)
           answers[operationActive].setTitle("checkbox", for: .normal)
        }else{
            answers[operationActive].setTitle("uncheckbox", for: .normal)
            answers[operationActive].setImage(checkBox, for: UIControlState.normal)
        }
 
 */
        caseA = 1
      
        switch operationActive {
            
        case 0 + q1ID,5 + q2ID,10 + q3ID,12 + q4ID,19 + q5ID,20 + q6ID,24 + q7ID,30 + q8ID,35 + q9ID,36 + q10ID,40 + q11ID,45 + q12ID,50 + q13ID,55 + q14ID,57 + q15ID:
            
            k = k + 1
            i = i + 1
            
            for index in 0...59 {
                
                if  answers[index].image(for: .normal) == UIImage(named:"uncheckbox") && operationActive == (57 + q15ID) {
                    hh = hh + 1
                    
                    if hh == 15 {
                        
                        let optionMenu = UIAlertController(title: "Result", message:String(k), preferredStyle: .alert)
                        let cancelAction = UIAlertAction(title: "Restart", style: .cancel, handler: nil)
                        optionMenu.addAction(cancelAction)
                        
                        self.present(optionMenu, animated: true, completion: nil)
                        
                        i = 0
                        k = 0
                        hh = 0
                        
                        for index in 0...59{
                            answers[index].setImage(checkBox, for: .normal)
                            
                            
                        }
                        
                        
                        
                    }
                    
                }
                
                
            }
        
        default:
            
           //  k = k - 1
             i = i + 1

             
             for index in 0...59 {
               
                if  answers[index].image(for: .normal) == UIImage(named:"uncheckbox") && (operationActive == (56) || operationActive == (58) || operationActive == (59) || operationActive == 57 ){
                    hh = hh + 1
                    
                    if hh == 15 {
                        
                        let optionMenu = UIAlertController(title: "Result", message:String(k), preferredStyle: .alert)
                        let cancelAction = UIAlertAction(title: "Restart", style: .cancel, handler: nil)
                        optionMenu.addAction(cancelAction)
                        
                        self.present(optionMenu, animated: true, completion: nil)
                        
                        i = 0
                        k = 0
                        hh = 0
                        
                        for index in 0...59{
                            answers[index].setImage(checkBox, for: .normal)
                            
                            
                        }

                        
                        
                    }
                
             }
             
            
             }
            
       /*
             if i == 15  {
                
                let optionMenu = UIAlertController(title: "Result", message:String(k), preferredStyle: .alert)
                let cancelAction = UIAlertAction(title: "Restart", style: .cancel, handler: nil)
                optionMenu.addAction(cancelAction)
                
                self.present(optionMenu, animated: true, completion: nil)
                
                i = 0
                k = 0
                
                for index in 0...59{
                    answers[index].setImage(checkBox, for: .normal)
                    
                    
                }
             
            }
            
            */
        }
        
        
        
    /*
        if isBoxClicked == true {
             isBoxClicked = false
        } else {
             isBoxClicked = true }
        
        switch operationActive {
        case 0:
                k = k + 1
                
                if isBoxClicked == true{
                    
                   bt2[2].setImage(checkBox, for: UIControlState.normal)
                    
                //    bt1.setImage(checkBox, for: UIControlState.normal)
                }else {
                   bt2[2].setImage(uncheckBox, for: UIControlState.normal)
                    // bt1.setImage(uncheckBox, for:  UIControlState.normal)
                }

                
            
        default:
            question.text = "Error"
        }
        
        if isBoxClicked == true{
            bt1.setImage(checkBox, for: UIControlState.normal)
        }else {
            bt1.setImage(uncheckBox, for:  UIControlState.normal)
        }
 */
        
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
