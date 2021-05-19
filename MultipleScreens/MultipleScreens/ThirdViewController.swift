//
//  ThirdViewController.swift
//  MultipleScreens
//
//  Created by Alexey on 19.05.2021.
//

import UIKit
protocol ThirdVCDelegate: class {
    func save(fullName: String)
}
class ThirdViewController: UIViewController {
    @IBOutlet var nameLable: UILabel!
  
    @IBOutlet var surnameLable: UILabel!
    
    var name:String = ""
    var surname:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLable.text = name
        surnameLable.text = surname
     
    }
   
    
    @IBAction func saveAction(_ sender: UIButton) {
        let rootVC = navigationController?.viewControllers.first as? ViewController
        rootVC?.fullnameLable.text = name + " " + surname
        rootVC?.fullnameLable.isHidden = false
        navigationController?.popToRootViewController(animated: true)
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
