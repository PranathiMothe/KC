//
//  New Team ViewController.swift
//  The Most Awesome Northwest-KC Programming Contest
//
//  Created by Mothe,Pranathi on 3/14/19.
//  Copyright © 2019 Mothe,Pranathi. All rights reserved.
//

import UIKit

class New_Team_ViewController: UIViewController {

    
    @IBOutlet weak var TeamName: UITextField!
    
    
    @IBOutlet weak var Student0: UITextField!
    
   
    @IBOutlet weak var Student1: UITextField!
    
    
    @IBOutlet weak var Student2: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Cancel(_ sender: Any) {
    
     self.dismiss(animated: true, completion: nil)
    
    }
    
    var school: School!
    @IBAction func Done(_ sender: Any) {
        let name = TeamName.text!
        let student0Name = Student0.text!
        let student1Name = Student1.text!
        let student2Name = STeamNametudent2.text!
        school.addTeam(name: name, students: [student0Name, student1Name, student2Name])
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
