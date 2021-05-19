//
//  SecondViewController.swift
//  MultipleScreens
//
//  Created by Alexey on 19.05.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var surname: UITextField!
    
    var name: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
             segue.identifier == "toThirdVC"
             let ThirdVC = segue.destination as? ThirdViewController
        ThirdVC?.name = name
        ThirdVC?.surname = surname.text ?? ""
        
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
