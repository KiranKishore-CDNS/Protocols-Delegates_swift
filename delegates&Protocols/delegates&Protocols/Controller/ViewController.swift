//
//  ViewController.swift
//  delegates&Protocols
//
//  Created by Kiran Kishore on 22/12/19.
//  Copyright © 2019 CDNS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanRecieve {
 
    @IBOutlet weak var dataToBePassed: UITextField!
    @IBOutlet weak var dataRecieved: UILabel!
    
    var dataFromVC2 = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dataRecieved.text = dataFromVC2
    }

    @IBAction func sendData(_ sender: UIButton) {
       performSegue(withIdentifier: "goToNextView", sender: self)
     
            view.backgroundColor = UIColor.white
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToNextView" {
            
            let destinationVC = segue.destination as! NewViewController
            destinationVC.dataFromVC1 = dataToBePassed.text!
            
            destinationVC.delegate = self
   
        }
         
    }
    
    //MARK: Protocol method
    func dataRecievedFrom(data: String) {
        
        dataRecieved.text = data
        
    }
}

