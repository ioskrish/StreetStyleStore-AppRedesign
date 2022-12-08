//
//  ViewController.swift
//  SSS
//
//  Created by TryCatch Classes on 27/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var icon: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        icon.isHidden = true
        do{
            sleep(3)
        }
        let go = storyboard?.instantiateViewController(withIdentifier: "MainScreen") as! MainScreen
        self.navigationController?.pushViewController(go, animated: true)
    }

}

