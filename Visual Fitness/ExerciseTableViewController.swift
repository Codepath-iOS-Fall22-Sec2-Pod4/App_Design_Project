//
//  ExerciseTableViewController.swift
//  Visual Fitness
//
//  Created by Kaidi Gao on 11/14/22.
//

import UIKit


class ExerciseTableViewController: UITableViewController {
    
    var exercises = [[String:Any]]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        let muscle = "biceps".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        let url = URL(string: "https://api.api-ninjas.com/v1/exercises?muscle="+muscle!)!
        var request = URLRequest(url: url)
        request.setValue("hl/+8UIrQSTiwqec7rK0Vg==UySr6lnFLWAF4uaZ", forHTTPHeaderField: "X-Api-Key")
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
            if let error = error {
                   print(error.localizedDescription)
            } else if let data = data {
                self.exercises = try! JSONSerialization.jsonObject(with: data, options: []) as! [[String: Any]]
                self.tableView.reloadData()
                
            }
        }
        
        task.resume()
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "ExerciseCell", for: indexPath) as! ExerciseTableViewCell
       let exercise = exercises[indexPath.row]["name"] as? String
       let instruction = exercises[indexPath.row]["instructions"] as? String
        
       cell.exerciseCell.text = exercise
        cell.instructionCell.text = instruction

        return cell
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return exercises.count
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
