//
//  ViewController.swift
//  DesignLayout
//
//  Created by Mahdi Mahjoobe on 2/14/19.
//  Copyright © 2019 Mahdi Mahjoobi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nameLbl = UILabel(frame: CGRect(x: 20, y: 70, width: UIScreen.main.bounds.width - 40, height: 45))
        nameLbl.textColor = .white
        nameLbl.backgroundColor = .black
        nameLbl.text = "www.sourceKhone.com"
        nameLbl.textAlignment = .center
        nameLbl.layer.cornerRadius = 8
        nameLbl.layer.masksToBounds = true
        view.addSubview(nameLbl)
        
        let learnLbl = UILabel()
        learnLbl.textColor = .white
        learnLbl.backgroundColor = .black
        learnLbl.text = "www.sourceKhone.com/learn"
        learnLbl.textAlignment = .center
        learnLbl.layer.cornerRadius = 8
        learnLbl.layer.masksToBounds = true
        learnLbl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(learnLbl)
        
        let widthConstraint = NSLayoutConstraint(item: learnLbl, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: UIScreen.main.bounds.width - 40)
        let heightConstraint = NSLayoutConstraint(item: learnLbl, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 45)
        let xConstraint = NSLayoutConstraint(item: learnLbl, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0)
        let yConstraint = NSLayoutConstraint(item: learnLbl, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1, constant: 0)
        
        NSLayoutConstraint.activate([widthConstraint, heightConstraint, xConstraint, yConstraint])
    }


}

