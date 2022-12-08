//
//  MainScreen.swift
//  SSS
//
//  Created by TryCatch Classes on 06/08/1944 Saka.
//

import UIKit

class MainScreen: UIViewController {
    
    // MARK: - UI Components
    
    //Navigation Bar
    @IBOutlet weak var NavView: UIView!
    @IBOutlet weak var NAvItem: UINavigationItem!
    @IBOutlet weak var menu: UIBarButtonItem!
    @IBOutlet weak var bag: UIBarButtonItem!
    
    //View for ScrollView
    @IBOutlet weak var SView: UIView!
    @IBOutlet weak var scrollV: UIScrollView!
    
    //ScrollView Containing StackView
    @IBOutlet weak var ContentView: UIView!
    @IBOutlet weak var stack1: UIStackView!
    
    //Screen different section views
    @IBOutlet weak var section1: UIView!
    
    //section2
    @IBOutlet weak var section2: UIView!
    @IBOutlet weak var collectV2: UICollectionView!
    //collectV2 components
    var csb_images = ["csb1","csb2","csb3"]
    var p_desc = ["klairs rich moist cream ","benton snail bee serum", "green vita C serum"]
    var p_price = ["1670","1650","1850"]
    
    //section3
    @IBOutlet weak var section3: UIView!
    @IBOutlet weak var shopbtn1: UIButton!
    
    //section4
    @IBOutlet weak var section4: UIView!
    @IBOutlet weak var collectV4: UICollectionView!
    var labels = ["Everything","Skincare","Shoes","Clothes"]
    
    @IBOutlet weak var collectV4B: UICollectionView!
   
    var imgArray = [String]()
    
    var imgArray1 = ["cv1","cv2","cv3","cv4"]
    var imgArray2 = ["cv4","cv1","cv2","cv3"]
    var imgArray3 = ["cv2","cv3","cv4","cv1"]
    var imgArray4 = ["cv3","cv4","cv1","cv2"]
    
    var c_desc = ["cannot stop my walk", "Front drawstrip top","klairs rich moist cream "]
    var c_price = ["699","599","1570"]
    
    
    //section5
    @IBOutlet weak var section5: UIView!
    //contains numerous buttons
    
    //section6
    @IBOutlet weak var section6: UIView!
    @IBOutlet weak var collectV6: UICollectionView!
    
    //section7
    @IBOutlet weak var section7: UIView!
    @IBOutlet weak var icon1: UIButton!
    @IBOutlet weak var icon2: UIButton!
    
    //collectV6 components
    var inst_img = ["insta1","insta2","insta3","insta4","insta5"]
    
    
    // MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectV2.dataSource = self
        collectV2.delegate = self

        collectV6.dataSource = self
        collectV6.delegate = self
        
        collectV4.dataSource = self
        collectV4.delegate = self
        
        collectV4B.dataSource = self
        collectV4B.delegate = self
        
        imgArray = imgArray1
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
}

extension MainScreen: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if ( collectionView == collectV2) {
            return 4
        }
        else if ( collectionView == collectV4){
            return 4
        }
        else if (collectionView == collectV4B ){
            return 4
        }
        else {
            return 6
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if (collectionView == collectV2) {
        if indexPath.row == 3 {
            let cell = collectV2.dequeueReusableCell(withReuseIdentifier: "block2B", for: indexPath) as! Block2BCVC
            cell.product_img.image = UIImage(named: "csb4")
            return cell
        } else {
            let cell = collectV2.dequeueReusableCell(withReuseIdentifier: "block2", for: indexPath)  as! Block2CVC
            cell.product_img.image = UIImage(named: csb_images[indexPath.row])
            cell.product_desc.text = p_desc[indexPath.row]
            cell.product_inr.text = p_price[indexPath.row]
            return cell
        }
    }
       else if (collectionView == collectV4B) {
        if indexPath.row == 3 {
            let cell = collectV4B.dequeueReusableCell(withReuseIdentifier: "block4C", for: indexPath) as! block4CCVC
            cell.product_img.image = UIImage(named: "cv4")
            return cell
        } else {
            let cell = collectV4B.dequeueReusableCell(withReuseIdentifier: "block4B", for: indexPath)  as! block4BCVC
            cell.product_img.image = UIImage(named: imgArray[indexPath.row])
            cell.product_desc.text = c_desc[indexPath.row]
            cell.product_inr.text = c_price[indexPath.row]
            return cell
        }
    }
     else if (collectionView == collectV4) {
         let cell = collectV4.dequeueReusableCell(withReuseIdentifier: "block4", for: indexPath) as! Block4CVC
         cell.sect_lbl.text = labels[indexPath.row]
         return cell
        }
    else {
            if indexPath.row == 5 {
                let cell = collectV6.dequeueReusableCell(withReuseIdentifier: "block6B", for: indexPath) as! Block6BCVC
                cell.insta_img.image = UIImage(named: "insta7")
                return cell
            } else {
                let cell = collectV6.dequeueReusableCell(withReuseIdentifier: "block6", for: indexPath)  as! Block6CVC
                cell.insta_img.image = UIImage(named: inst_img[indexPath.row])
                return cell
            }
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         
        if ( collectionView == collectV6) {
            let width = ((collectionView.frame.width - 20) / 2)
            let height = ((collectionView.frame.height - 10) / 2)
            
            return CGSize(width: width, height: height)
        }
        
        else if ( collectionView == collectV4B) {
            let width = ((collectionView.frame.width - 20) / 2)
            let height = ((collectionView.frame.height - 10) / 2)
            
            return CGSize(width: width, height: height)
        }
        
        else if (collectionView == collectV4) {
            let width = ((collectionView.frame.width - 52) / 4)
            let height = ((collectionView.frame.height) / 1)
            
            return CGSize(width: width, height: height)
            
        }
        
        
        let width = ((collectionView.frame.width - 20) / 2)
        let height = ((collectionView.frame.height - 30) / 2)
        
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        if ( collectionView == collectV6) {
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }
        
        if ( collectionView == collectV4B) {
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }
        
        else if (collectionView == collectV4) {
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 52)
        }
        
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        if ( collectionView == collectV6) {
            return 20
        }
        
         else if ( collectionView == collectV4B) {
            return 20
        }
        
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        if ( collectionView == collectV6) {
            return 10
        }
        
        else if ( collectionView == collectV4B) {
            return 10
        }
    
        return 10
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        
        if collectionView == collectV4 {
            
            switch indexPath.row {
            case 0:
                self.imgArray = self.imgArray1
            case 1:
                self.imgArray = self.imgArray2
            case 2:
                self.imgArray = self.imgArray3
            case 3:
                self.imgArray = self.imgArray4

            default:
                break
            }
            self.collectV4B.reloadData()
        }
   }
}
