//
//  ViewController.swift
//  AgingPeople
//
//  Created by Jonathan Salin Lee on 3/14/17.
//  Copyright © 2017 Jonathan Salin Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let names: [String] = ["George", "Betty", "Fran", "Joe", "Helda", "Winifred", "Zed", "Sara", "Jeffy", "Abraham", "Anna", "Melinda"]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Person", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        cell.detailTextLabel?.text = String(arc4random_uniform(90) + 5) + " years old"
        return cell
    }
}
