//
//  ViewController.swift
//  demon
//
//  Created by 陳ゼイ on 2020/5/1.
//  Copyright © 2020 陳ゼイ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func login(_ sender: Any) {
        let viewController = GM02010100ViewController.init(nibName: "GM02010100ViewController", bundle: nil)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}

