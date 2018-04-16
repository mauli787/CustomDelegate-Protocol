//
//  ViewController.swift
//  SwiftBasic
//
//  Created by Dnyaneshwar Shinde on 16/04/18.
//  Copyright © 2018 Dnyaneshwar Shinde. All rights reserved.
//

import UIKit

//MARK: step 4 conform the protocol here
class ViewController: UIViewController ,SecondVCDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //MARK: step 5 create a reference of Class B and bind them through the prepareforsegue method
        if let nav = segue.destination as? UINavigationController, let classBVC = nav.topViewController as? SecondViewController {
            classBVC.delegate = self
        }
    }
    //MARK: step 6 finally use the method of the contract
    func changeBackgroundColor(_ color: UIColor?) {
        view.backgroundColor = color
    }
}

