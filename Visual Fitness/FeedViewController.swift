//
//  FeedViewController.swift
//  Visual Fitness
//
//  Created by Akil Bhuiyan on 10/28/22.
//

import UIKit
import Parse

class FeedViewController: UIViewController {

    @IBOutlet weak var hand1: UIButton!
    @IBOutlet weak var textt: UILabel!
    @IBAction func BP(_ sender: UIButton) {
        sender.backgroundColor = UIColor.clear
        textt.text = "You pressed Hand"
    }
    
    
    @IBAction func legButton(_ sender: UIButton) {
        sender.backgroundColor = UIColor.clear
        textt.text = "You pressed Legs"
    }
    
    
    @IBAction func cardio(_ sender: UIButton) {
        sender.backgroundColor = UIColor.clear
        textt.text = "You pressed Cardio"
    }
    
    
    @IBAction func lifting(_ sender: UIButton) {
        sender.backgroundColor = UIColor.clear
        textt.text = "You pressed Lifting"
    }
    
    @IBAction func onLogout(_ sender: Any) {
        PFUser.logOut()
                      let main = UIStoryboard(name: "Main", bundle: nil)
                      let loginViewController = main.instantiateViewController(withIdentifier: "LoginViewController")
                      guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let delegate = windowScene.delegate as? SceneDelegate else { return }
                      
                      delegate.window?.rootViewController = loginViewController
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
