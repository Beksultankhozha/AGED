//
//  LabkaTableViewController.swift
//  Restaraunts
//
//  Created by Бексултанхожа on 3/22/17.
//  Copyright © 2017 Бексултанхожа. All rights reserved.
//

import UIKit

class LabkaTableViewController: UITableViewController {
    
    var laboratory:[Labka] = [
        
        Labka(name: "Labka 1",  lecture: "l1",  video: "1. Работа с терминалом Mac OS X",labka: "l1",test: "erfef"),
        Labka(name: "Labka 2",  lecture: "l2",  video: "2. Сетевые настройки", labka: "l2",  test: "fer"),
        Labka(name: "Labka 3",  lecture: "l3",  video: "3. Начальная установка и настройка операционной системы.", labka: "l3", test: "fere"),
        Labka(name: "Labka 4",  lecture: "l4",  video: "4. Работа с пользователями и группами", labka: "l4",  test: "fe"),
        Labka(name: "Labka 5",  lecture: "l5",  video: "5. Настройка служб Mail, Messages, Contactsf", labka: "l5", test: "fer"),
        Labka(name: "Labka 6",  lecture: "l6",  video: "6. Настройка служб Caching, Software Update и VPN",     labka: "l6",     test: ""),
        Labka(name: "Labka 7",  lecture: "l7",  video: "7. Настройка службы Profile Manager",     labka: "l7",     test: ""),
  

    
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 135.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
         self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor(colorLiteralRed: 228.0/255.0, green: 170.0/255.0, blue: 60.0/255.0, alpha: 1)]

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return laboratory.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReuseLabka", for: indexPath) as! LabkaTableViewCell

        cell.nameLabkaLabel?.text = laboratory[indexPath.row].video

        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowLabkaInformation" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! LabkaInformationViewController
                destinationController.labkaP = laboratory[indexPath.row]
                            }
        }
    }
    
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

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
