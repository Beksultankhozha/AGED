//
//  YouTubeTableViewController.swift
//  Restaraunts
//
//  Created by Бексултанхожа on 3/25/17.
//  Copyright © 2017 Бексултанхожа. All rights reserved.
//

import UIKit

class YouTubeTableViewController: UITableViewController {
    
    var videoTube:[VideoURL] = [
        
        VideoURL(name: "1. Командная строка", urlv: "https://www.youtube.com/embed/HZ48JwTLrmg"),
        VideoURL(name: "2. Удаленное подключение и мониторинг сервера", urlv: "https://www.youtube.com/embed/dr9l6QiIBD0"),
        VideoURL(name: "3. Загрузка и установка OS X Server", urlv: "https://www.youtube.com/embed/bNJetSmyCic"),
        VideoURL(name: "4. Настройка службы Open Directory", urlv: "https://www.youtube.com/embed/OSrKal6uqVk"),
        VideoURL(name: "5. Настройка службы Mail, Messages и Contacts", urlv: "https://www.youtube.com/embed/0dDGKyGo7io"),
        VideoURL(name: "6. Настройка службы Caching и Software Update", urlv: "https://www.youtube.com/embed/gWroC28h00w"),
        VideoURL(name: "7.  Настройка службы VPN", urlv: "https://www.youtube.com/embed/w-VYDddAt7M"),
        VideoURL(name: "8. Настройка службы Profile Manager", urlv: "https://www.youtube.com/embed/JKuKvHeELxA")
     
    ]


    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 135.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
         self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor(colorLiteralRed: 228.0/255.0, green: 170.0/255.0, blue: 60.0/255.0, alpha: 1)]
        
        if #available(iOS 10.0, *) {
            self.navigationController?.tabBarItem.badgeColor = UIColor(colorLiteralRed: 228.0/255.0, green: 170.0/255.0, blue: 60.0/255.0, alpha: 1)
        } else {
            // Fallback on earlier versions
        }
            }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return videoTube.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoIdentifier", for: indexPath) as! VideosTableViewCell

         
        
         cell.nameYLabel?.text = videoTube[indexPath.row].name
    

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowVideoInformation" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! YouTubeViewController
                
                destinationController.videoYouTube = videoTube[indexPath.row]
                //destinationController.labkaP = laboratory[indexPath.row]
                
            }
        }
    }


    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
