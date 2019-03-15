//
//  TeamTableViewController.swift
//  The Most Awesome Northwest-KC Programming Contest
//
//  Created by Mothe,Pranathi on 3/14/19.
//  Copyright © 2019 Mothe,Pranathi. All rights reserved.
//

import UIKit

class TeamsTableViewController: UITableViewController {

    var teamView:School!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return teamView.teams.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeamCells", for: indexPath)
        cell.textLabel?.text = teamView.teams[indexPath.row].name
        return cell
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.title = teamView.name
        tableView.reloadData()
    }
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "studentSegue"{
            let student = segue.destination as! StudentsViewController
            student.studentView = teamView.teams[tableView.indexPathForSelectedRow!.row]
        }
        else if segue.identifier == "newTeamSegue"{
            let team = segue.destination as! NewTeamViewController
            team.newSchoolView = teamView
        }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            teamView.teams.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

