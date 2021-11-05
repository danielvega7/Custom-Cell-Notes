//
//  ViewController.swift
//  Custom Cell Notes
//
//  Created by DANIEL VEGA on 11/5/21.
//

import UIKit

public struct Student{
    var first: String
    var last: String
    var favColor: String
    var id: Int
    var lunch: Int
    var favAnimal: String
}


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    var students = [Student]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        students.append(Student(first: "Danny", last: "Vega", favColor: "Blue", id: 230001, lunch: 5, favAnimal: "Penguin"))
        students.append(Student(first: "Karson", last: "Hollander", favColor: "Red", id: 230420, lunch: 7, favAnimal: "Dog"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyCustomCell4Life
        cell.firstLabelOutlet.text = students[indexPath.row].first
        cell.lastLabelOutlet.text = students[indexPath.row].last
        cell.imageViewOutlet.backgroundColor = UIColor.blue
        return cell
    }


}

