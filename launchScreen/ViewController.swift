//
//  ViewController.swift
//  launchScreen
//
//  Created by Mohan K on 27/02/23.
//

import UIKit

class ViewController: UIViewController {
    private let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0,
                                                 y: 0,
                                                 width: 150,
                                                 height: 150))
        imageView.image = UIImage(named: "Pepul")
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       print("viewDidLoad")
        imageView.center = view.center
        
        view.backgroundColor = .systemBackground
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        view.addSubview(imageView)

        DispatchQueue.main.asyncAfter(deadline: .now()+0.5, execute: {
            self.animatee()
        })
        
        print("viewDidLayoutSubviews")
        
    }
    
    func animatee() {
        
        UIView.animate(withDuration: 1, animations: {
            self.imageView.transform = CGAffineTransform(scaleX: 4, y: 4)
            self.imageView.alpha = 0.1
        }, completion: { _ in
            DispatchQueue.main.asyncAfter(deadline: .now(), execute:{
                let viewController = oneViewController()
                viewController.modalPresentationStyle = .fullScreen
                self.present(viewController, animated: true)
            })
        })
    }
    
    private func animate() {
        UIView.animate(withDuration: 1, animations: {
            let size = self.view.frame.size.width * 3
            let diffX = size - self.view.frame.size.width
            let diffY = self.view.frame.size.width - size
            
            self.imageView.frame = CGRect(x: -(diffX/2),
                                          y: diffY/2,
                                          width: size,
                                          height: size
            )
        })
        UIView.animate(withDuration: 1.5, animations: {
                self.imageView.alpha = 0
            },
    completion: {
                done in
                if done {
                    DispatchQueue.main.asyncAfter(deadline: .now()+0.5, execute:{
                    let viewController = oneViewController()
//                    viewController.modalTransitionStyle = .crossDissolve
                        viewController.modalPresentationStyle = .fullScreen
                    self.present(viewController, animated: true)
                   })
//                        self.navigationController?.pushViewController(viewController, animated: true)
                }
                
            })
            
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
