//
//  MainSrc.swift
//  SSS
//
//  Created by TryCatch Classes on 27/10/22.
//

import UIKit

class MainSrc: UIViewController {

    
    @IBOutlet weak var scroll: UIScrollView!
    
    @IBOutlet weak var stack1: UIStackView!
    
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var nav2: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
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
