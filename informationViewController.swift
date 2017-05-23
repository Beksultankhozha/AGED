//
//  informationViewController.swift
//  Restaraunts
//
//  Created by Бексултанхожа on 3/12/17.
//  Copyright © 2017 Бексултанхожа. All rights reserved.
//

import UIKit

class informationViewController: UIViewController,UITextViewDelegate {
    
    @IBOutlet var textViewInfo: UITextView!

    @IBOutlet weak var pdfView: UIWebView!


   
    var textInfo = ""
    var subject: Subjets!
    var path = ""
   
    override func viewDidLoad() {
        super.viewDidLoad()
    
       // Do any additional setup after loading the view.
     
         // textViewInfo.text = subject.name
        
        self.navigationController?.navigationBar.tintColor = UIColor (colorLiteralRed: 228.0/255.0, green: 170.0/255.0, blue: 60.0/255.0, alpha: 1)
        path = Bundle.main.path( forResource: subject.lecture ,ofType:"pdf")!
        
        
        let url = NSURL.init(fileURLWithPath: path)
        
        self.pdfView.loadRequest(NSURLRequest(url:url as URL) as URLRequest)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
     
    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "textLesson",for: indexPath) as!
        informationViewController
        
        switch indexPath.row {
        case 0:
            cell.textViewInfo.text = "cdnsjcndsjlcnlksdc"
        default:
            cell.textViewInfo.text = "vevfvvf"
        }
        
        
    
    }
    
    */
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
