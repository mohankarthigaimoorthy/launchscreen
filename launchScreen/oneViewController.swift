//
//  oneViewController.swift
//  launchScreen
//
//  Created by Mohan K on 27/02/23.
//

import UIKit

class oneViewController: UIViewController {

    let label: UILabel = {
        let label =  UILabel(frame: CGRect(x: 0,
                                           y: 0,
                                           width: 300, height: 100))
       
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.text = "Welcome to Pepul!....."
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label)
        label.center = view.center
        view .backgroundColor = .systemBackground
        // Do any additional setup after loading the view.
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
