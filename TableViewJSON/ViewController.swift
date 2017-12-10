//
//  ViewController.swift
//  TableViewJSON
//
//  Created by Robert on 09/12/17.
//  Copyright © 2017 Robert González. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableViewTours: UITableView!
    
    var arrayA = [String]()
    var arrayB = [String]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayA = ["matute", "thor", "canela"]
        arrayB = ["300.00", "440.00", "700.00"]
        
        tableViewTours.delegate = self
        tableViewTours.dataSource = self
        
        let nibName = UINib(nibName: "ToursTableViewCell", bundle: Bundle.main)
        
        tableViewTours.register(nibName, forCellReuseIdentifier: "ToursTableViewCell")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayA.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableViewTours.dequeueReusableCell(withIdentifier: "ToursTableViewCell", for: indexPath)
        
        guard let toursCell = cell as? ToursTableViewCell else {return cell}
        
        toursCell.tituloLabelCell.text = arrayA[indexPath.row]
        toursCell.precioLabelCell.text = arrayB[indexPath.row]
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}

