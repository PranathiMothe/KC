//
//  Students.swift
//  The Most Awesome Northwest-KC Programming Contest
//
//  Created by Mothe,Pranathi on 3/14/19.
//  Copyright © 2019 Mothe,Pranathi. All rights reserved.
//

import UIKit

class StudentsViewController: UIViewController {

    var studentView : Team!
    @IBOutlet weak var Student0: UILabel!
    
    @IBOutlet weak var Student1: UILabel!
    
    @IBOutlet weak var Student2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Student0.text = studentView.students[0]
        Student1.text = studentView.students[1]
        Student2.text = studentView.students[2]
        navigationItem.title = studentView.name
        // Do any additional setup after loading the view.
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
