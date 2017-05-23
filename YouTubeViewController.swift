//
//  YouTubeViewController.swift
//  Restaraunts
//
//  Created by Бексултанхожа on 3/25/17.
//  Copyright © 2017 Бексултанхожа. All rights reserved.
//

import UIKit

class YouTubeViewController: UIViewController {

    @IBOutlet weak var videoView: UIWebView!
    
    var videoYouTube: VideoURL!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.tintColor = UIColor (colorLiteralRed: 228.0/255.0, green: 170.0/255.0, blue: 60.0/255.0, alpha: 1)
        let youtubeURL = "https://www.youtube.com/embed/Rg6GLVUnnpM"
        
        
        
        videoView.loadHTMLString("<iframe width=\"367\" height=\"179\" src=\"\(videoYouTube.urlv)\" frameborder= \"0\" allowfullscreen></iframe>", baseURL: nil)
        
    //    videoView.scalesPageToFit = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
