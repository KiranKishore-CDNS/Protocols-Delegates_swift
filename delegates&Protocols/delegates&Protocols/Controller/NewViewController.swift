//
//  NewViewController.swift
//  delegates&Protocols
//
//  Created by Kiran Kishore on 22/12/19.
//  Copyright © 2019 CDNS. All rights reserved.
//

import UIKit

protocol CanRecieve {
    func dataRecievedFrom(data : String)
}

class NewViewController: UIViewController {

    
    var delegate : CanRecieve?
    @IBOutlet weak var dataToBeSent: UITextField!
  
    
    @IBOutlet weak var dataReceived: UILabel!
    
    
    var dataFromVC1 = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        dataReceived.text = dataFromVC1
    }
    

    @IBAction func sendData(_ sender: UIButton) {
        
        delegate?.dataRecievedFrom(data: dataToBeSent.text!)

        dismiss(animated: true, completion: nil)

          }
}
