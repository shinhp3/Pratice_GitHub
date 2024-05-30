//
//  MyTable.swift
//  PraticeUi
//
//  Created by 신효범 on 5/30/24.
//

import UIKit

class MyTable: UIViewController {
    
    let friendNames: [String] = ["Henry", "Leeo", "Jay"]

    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.backgroundColor = .yellow
        
        myTableView.delegate = self
        myTableView.dataSource = self
    }
    

}

extension MyTable: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "MyFirstCell", for: indexPath)
        cell.textLabel?.text = friendNames[indexPath.row]
        return cell
    }
}
