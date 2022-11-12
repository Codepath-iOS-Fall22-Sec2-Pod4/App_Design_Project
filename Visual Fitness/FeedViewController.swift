//
//  FeedViewController.swift
//  Visual Fitness
//
//  Created by Krina Patel on 10/28/22.
//

import UIKit
import Parse
import Alamofire

class FeedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    var excercices = [[String:Any]]()
    
    @IBAction func onLogout(_ sender: Any) {
        PFUser.logOut()
                let main = UIStoryboard(name: "Main", bundle: nil)
                let loginViewController = main.instantiateViewController(withIdentifier: "LoginViewController")
                guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let delegate = windowScene.delegate as? SceneDelegate else { return }
                
                delegate.window?.rootViewController = loginViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let muscle = "triceps".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        let url = URL(string: "https://api.api-ninjas.com/v1/exercises?muscle="+muscle!)!
        var request = URLRequest(url: url)
        request.setValue("DKNSY/TsRW76X6fBvfILbg==IeNapx9fOrY4MZ7Z", forHTTPHeaderField: "X-Api-Key")
        let task = URLSession.shared.dataTask(with: request) {(data, response, error) in
            guard let data = data else { return }
            print(String(data: data, encoding: .utf8)!)
        }
        task.resume()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MucleTableViewCell") as! MucleTableViewCell
        
        let excersice = excercices[indexPath.row]
        let mucsle = excersice["muscle"] as! String
        cell.mucleLabel.text = mucsle
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
