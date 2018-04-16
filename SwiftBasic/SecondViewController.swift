//
//  SecondViewController.swift
//  SwiftBasic
//
//  Created by Dnyaneshwar Shinde on 16/04/18.
//  Copyright © 2018 Dnyaneshwar Shinde. All rights reserved.
//

import UIKit

//MARK: step 1 Add Protocol here
protocol SecondVCDelegate: class {
    func changeBackgroundColor(_ color: UIColor?)
}

class SecondViewController: UIViewController  {
    
    
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    
    //MARK: step 2 Create a delegate property here, don't forget to make it weak!
    weak var delegate: SecondVCDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstView.backgroundColor = .cyan
        firstView.layer.borderColor = UIColor.white.cgColor
        firstView.layer.borderWidth = 2.0
        firstView.layer.cornerRadius = firstView.frame.width / 2
        firstView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap(_:))))
        secondView.backgroundColor = .brown
        secondView.layer.borderColor = UIColor.white.cgColor
        secondView.layer.borderWidth = 2.0
        secondView.layer.cornerRadius = secondView.frame.width / 2
        secondView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap(_:))))
        
    }
    @IBAction func dismissView(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
    
    @objc func handleTap(_ tapGesture: UITapGestureRecognizer) {
        
        view.backgroundColor = tapGesture.view?.backgroundColor
        //MARK: step 3 Add the delegate method call here
        delegate?.changeBackgroundColor(tapGesture.view?.backgroundColor)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
