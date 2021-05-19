//
//  ViewController.swift
//  MultipleScreens
//
//  Created by Alexey on 19.05.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var fullnameLable: UILabel!
    @IBOutlet var username: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
             segue.identifier == "toSecondVC"
             let secondVC = segue.destination as? SecondViewController
        secondVC?.name = username.text ?? ""
        }

}

extension ViewController: ThirdVCDelegate {
    func save(fullName: String) {
        
    }
}
