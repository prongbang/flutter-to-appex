//
//  ViewController.swift
//  ios-appex
//
//  Created by Endtry on 19/3/2564 BE.
//

import UIKit
import Flutter

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(type:UIButton.ButtonType.custom)
        button.addTarget(self, action: #selector(navigateToFlutterCounter), for: .touchUpInside)
        button.setTitle("FLUTTER COUNTER", for: UIControl.State.normal)
        button.frame = CGRect(x: 80.0, y: 210.0, width: 260.0, height: 40.0)
        button.backgroundColor = UIColor.blue
        self.view.addSubview(button)
    }
    
    @objc func navigateToFlutterCounter() {
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
        let flutterViewController =
            FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        present(flutterViewController, animated: true, completion: nil)
    }
}

