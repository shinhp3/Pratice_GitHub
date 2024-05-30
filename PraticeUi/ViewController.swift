//
//  ViewController.swift
//  PraticeUi
//
//  Created by 신효범 on 5/30/24.
//

import UIKit

struct Family {
    let myName: String
    let bestFriendName: String
    let nextFriendName: String
}

class ViewController: UIViewController {
    
    let friendNames: [String] = ["Henry", "Leeo", "Jay" ]
    let koreanNames: [String:String] = ["Henry": "핸리", "Leeo": "리오", "Jay": "제이"]
    var count: Int = 0
    let friend = Family(myName: "Henry2", bestFriendName: "Leeo2", nextFriendName: "Jay2")
    
    
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var bestFriendNameLabel: UILabel!
    @IBOutlet weak var nextFriendNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapButton(_ sender: Any) {
//        let friendName = friendNames[count]
        nameLable.text = friend.myName
        bestFriendNameLabel.text = friend.bestFriendName
        nextFriendNameLabel.text = friend.nextFriendName
    }
    
}

