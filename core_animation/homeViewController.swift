//
//  homeViewController.swift
//  core_animation
//
//  Created by Karthiga on 12/29/23.
//

import UIKit

class homeViewController: UIViewController {
    let label:UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 100))
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 24, weight:.bold)
        label.text = "karthiga"
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)
        label.center = view.center
        view.backgroundColor = .systemBlue
    }
    

}
