//
//  New School ViewController.swift
//  The Most Awesome Northwest-KC Programming Contest
//
//  Created by Mothe,Pranathi on 3/14/19.
//  Copyright © 2019 Mothe,Pranathi. All rights reserved.
//

import UIKit

class New_School_ViewController: UIViewController {

    
    @IBOutlet weak var name: UITextField!

    @IBOutlet weak var Coach: UITextField!
    
    var newSchool: School!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Cancel(_ sender: Any) {
    
     self.dismiss(animated: true, completion: nil)
    
    }
    

    @IBAction func Done(_ sender: Any) {
        let schoolName = name.text!
        let coachName = Coach.text!
        
        Schools.shared.add(school: School(name: schoolName, coach: coachName))
        self.dismiss(animated: true, completion: nil)
    
    
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
