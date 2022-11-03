//
//  FeedViewController.swift
//  Visual Fitness
//
//  Created by Akil Bhuiyan on 10/28/22.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var hand1: UIButton!
    @IBOutlet weak var textt: UILabel!
    @IBAction func BP(_ sender: UIButton) {
        sender.backgroundColor = UIColor.clear
        textt.text = "You pressed Hand"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        // Do any additional setup after loading the view.
        
        
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
