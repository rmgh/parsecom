//
//  ViewController.swift
//  parsecom
//
//  Created by minowaryohei on 2015/06/01.
//  Copyright (c) 2015年 rm. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func AddButtonTapped(sender: UIButton) {
        let memo = PFObject(className: "Memo")
        memo["text"] = textField.text
        memo.saveInBackground()
    }

}

