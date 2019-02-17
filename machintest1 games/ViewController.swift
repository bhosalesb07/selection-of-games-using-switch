//
//  ViewController.swift
//  machintest1 games
//
//  Created by Mac on 01/12/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    let games = ["football","cricket","hockey","rugby","baseball"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = games[indexPath.row]
        let switch1 = UISwitch()
        cell.accessoryView = switch1
        switch1.accessibilityLabel = cell.textLabel?.text
        switch1.addTarget(self, action: #selector(switchpressed), for: .valueChanged)
        var _:String = (cell.textLabel?.text!)!
        return cell
    }
    
    @objc
    func switchpressed(sender : UISwitch){
        print("switch on")
        if sender.isOn == true
    {
        let alert = UIAlertController(title: "Game Selected", message: String(describing: sender.accessibilityLabel!), preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "ok", style: .default) { (okAction) in
            print("ok pressed")}
        
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel) { (cancelAction) in
            print("cancel pressed")}
        
            alert.addAction(okAction)
            alert.addAction(cancelAction)
                self.present(alert, animated: true, completion: nil)
            }
        else
        {
            print("switch is off")
        }
    }
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

