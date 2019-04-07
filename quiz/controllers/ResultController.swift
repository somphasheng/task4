//
//  ResultController.swift
//  task-4-quize
//
//  Created by sophia on 5/4/19.
//  Copyright © 2019 sophia. All rights reserved.
//

import UIKit

class ResultController: UIViewController {

    @IBOutlet weak var lbScore: UILabel!
    @IBOutlet weak var imResultEmotion: UIImageView!
    @IBOutlet weak var btnDone: UIButton!
    var totalScore = String()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbScore.text=totalScore
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func done(_ sender: Any) {
        
        exit(0)
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
