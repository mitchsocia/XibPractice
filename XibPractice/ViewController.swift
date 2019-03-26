//
//  ViewController.swift
//  XibPractice
//
//  Created by Mitchell Socia on 3/22/19.
//  Copyright © 2019 Mitchell Socia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var testView: TestView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        let nib = UINib(nibName: "Custom Cell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "Cell")
        testView.mainLabel.text = "Hey."
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCell
        cell.label1.text = "Row \(indexPath.row)"
        return cell
    }
    
    
}








