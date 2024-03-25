//
//  ViewController.swift
//  core_animation
//
//  Created by Karthiga on 12/29/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    private let imageview: UIImageView = {
        let imageview = UIImageView(frame:CGRect(x: 0, y: 0, width: 150, height: 150))
        imageview.image = UIImage(named: "ig1")
        return imageview
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageview)
        //view.backgroundColor = .brown
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageview.center = view.center
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5, execute:{
            self.animate()
        })
    }
    private func animate(){
        UIView.animate(withDuration: 1, animations:{
            let size = self.view.frame.size.width*3
            let diffx = size - self.view.frame.size.width
            let diffy = size - self.view.frame.size.height-size
            self.imageview.frame = CGRect(x: -(diffx/2), y: diffy/2, width: size, height: size)
            //self.imageview.alpha = 0
        })
        UIView.animate(withDuration: 1.5, animations:{
            self.imageview.alpha = 0}, completion: { done in
                if done {
                    DispatchQueue.main.asyncAfter(deadline: .now()+0.3, execute: {
        let viewcontroller = homeViewController()
        viewcontroller.modalTransitionStyle = .crossDissolve
        viewcontroller.modalPresentationStyle = .fullScreen
                    self.present(viewcontroller, animated: true)
                    })
    }
    })
    
}

}
