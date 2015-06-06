//
//  ViewController.swift
//  originalapp
//
//  Created by Soma on 2015/06/05.
//  Copyright (c) 2015年 Soma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var ticTacBtn1 : UIButton!
    @IBOutlet var ticTacBtn2 : UIButton!
    @IBOutlet var ticTacBtn3 : UIButton!
    @IBOutlet var ticTacBtn4 : UIButton!
    @IBOutlet var ticTacBtn5 : UIButton!
    @IBOutlet var ticTacBtn6 : UIButton!
    @IBOutlet var ticTacBtn7 : UIButton!
    @IBOutlet var ticTacBtn8 : UIButton!
    @IBOutlet var ticTacBtn9 : UIButton!

    @IBOutlet var distanceLabel: UILabel!
    @IBOutlet var remainLabel: UILabel!
        var banArray:[[String]] = [["0","0","0","0","1"] ,["0","0","0","0","0"],["0","0","0","0","0"] ,["0","0","0","0","0"] ,["0","0","0","0","0"],["0","0","0","0","2"]]
        let EMPTY = 0, PLAYER1 = 1, PLAYER2 = 2

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btClick(sender: UIButton){
        banArray[0][sender.tag-1] = 1
        
        
    }
    @IBAction func btClick2(sender: UIButton){
        banArray[1][sender.tag-1] = 1
        
        
    }
    @IBAction func btClick3(sender: UIButton){
        banArray[2][sender.tag-1] = 1
        
        
    }
    @IBAction func btClick4(sender: UIButton){
        banArray[3][sender.tag-1] = 1
        
        
    }
    @IBAction func btClick5(sender: UIButton){
        banArray[4][sender.tag-1] = 1
        
        
    }
}





