//
//  ViewController.swift
//  originalapp
//a
//  Created by Soma on 2015/06/05.
//  Copyright (c) 2015年 Soma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet var distanceLabel: UILabel!
    @IBOutlet var remainLabel: UILabel!
    var tag1:Int = 0
    var tag2:Int = 0
    var index1:Int = 0
    var index2:Int = 4
    var index3:Int = 4
    var index4:Int = 21

    var change:Bool = true

    
        var banArray:[[Int]] = [[0,0,0,0,1] ,[0,0,0,0,0],[0,0,0,0,0] ,[0,0,0,0,0] ,[2,0,0,0,0]]
        let EMPTY = 0, PLAYER1 = 1, PLAYER2 = 2

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func playerchange() {
        change = !change

    }
    @IBAction func hoge(sender: UIButton){
        self.tag2 = sender.tag
        self.alert()
        func btnfalse(){
            
            for ( var i = 1, n = 25 ; i < n ; i++ ) {
                var btn:UIButton = self.view.viewWithTag(i) as UIButton
                btn.enabled = false
            }
            for ( var i = 1; i < 5 ; i++ ) {
                for ( var j = 1 ; j < 5 ; j++ ){
                    banArray[i][j] = 0
                }
                
            }
        }
    }
    func alert(){
        let alert = UIAlertController(title: "タイトル", message: "プレイヤー１ですか？", preferredStyle:UIAlertControllerStyle.Alert)
        alert.addAction(
            UIAlertAction(
                title:"ok", style: UIAlertActionStyle.Default, handler: {acton in
                    NSLog("OKボタンが押されました")
                    
                    NSLog("%d",self.tag2)
                    if (self.tag1 == 0){
                    self.btClick()
                    }else if (self.tag1 == 1){
                    self.btClick2()
                    }else if (self.tag1 == 2){
                    self.btClick3()
                    }else if (self.tag1 == 3){
                    self.btClick4()
                    }else{
                    self.btClick5()/*UIButtonz()*/
                    }
                    self.playerchange()
                    self.huga()

                }
            )
        )
        presentViewController(alert, animated: true, completion: nil)
    }
    
    func huga() {
    
        if (change == true){
        if (index1 == 0 ){
        if (index1+index2+1 == 1){
            var btn1: UIButton = self.view.viewWithTag(index2+5) as UIButton
            btn1.enabled = true
            var btn2: UIButton = self.view.viewWithTag(index2+1) as UIButton
            btn2.enabled = true
        }else if (index2+index1+1 == 5){
            var btn3: UIButton = self.view.viewWithTag(index2+5) as UIButton
            btn3.enabled = true
            var btn4: UIButton = self.view.viewWithTag(index2-1) as UIButton
            btn4.enabled = true
        }else{
            var btn5 = self.view.viewWithTag(index2+5) as UIButton
            btn5.enabled = true
            var btn6: UIButton = self.view.viewWithTag(index2+1) as UIButton
            btn6.enabled = true
            var btn7: UIButton = self.view.viewWithTag(index2-1 ) as UIButton
            btn7.enabled = true
            
        }
        }else if(index1 == 1){
            if (index1*5+index2+1 == 6){
                
                var btn8: UIButton = self.view.viewWithTag(index2+5) as UIButton
                btn8.enabled = true
                var btn9: UIButton = self.view.viewWithTag(index2-5) as UIButton
                btn9.enabled = true
                var btn10: UIButton = self.view.viewWithTag( index2+1 ) as UIButton
                btn10.enabled = true
            }else if (index1*5+index2+1 == 10){
                
                var btn11: UIButton = self.view.viewWithTag(index2-5) as UIButton
                btn11.enabled = true
                var btn12: UIButton = self.view.viewWithTag(index2-1 ) as UIButton
                btn12.enabled = true
                var btn13: UIButton = self.view.viewWithTag(index2+5) as UIButton
                btn13.enabled = true
            }else{
                
                var btn14: UIButton = self.view.viewWithTag(index2+5) as UIButton
                btn14.enabled = true
                var btn15: UIButton = self.view.viewWithTag(index2+1) as UIButton
                btn15.enabled = true
                var btn16: UIButton = self.view.viewWithTag(index2-1) as UIButton
                btn16.enabled = true
                var btn17: UIButton = self.view.viewWithTag(index2-5) as UIButton
                btn17.enabled = true
                
            }
        }else if (index1 == 2){
            if (index1*5+index2+1 == 11){
                var btn18: UIButton = self.view.viewWithTag(index2+5 ) as UIButton
                btn18.enabled = true
                var btn19: UIButton = self.view.viewWithTag(index2-5) as UIButton
                btn19.enabled = true
                var btn20: UIButton = self.view.viewWithTag( index2+1 ) as UIButton
                btn20.enabled = true
            }else if (index1*5+index2+1 == 15){

                var btn21: UIButton = self.view.viewWithTag(index2-5) as UIButton
                btn21.enabled = true
                var btn22: UIButton = self.view.viewWithTag(index2-1 ) as UIButton
                btn22.enabled = true
                var btn23: UIButton = self.view.viewWithTag(index2+5) as UIButton
                btn23.enabled = true
            }else{
                var btn24: UIButton = self.view.viewWithTag(index2+5) as UIButton
                btn24.enabled = true
                var btn25: UIButton = self.view.viewWithTag(index2+1) as UIButton
                btn25.enabled = true
                var btn26: UIButton = self.view.viewWithTag(index2-1) as UIButton
                btn26.enabled = true
                var btn27: UIButton = self.view.viewWithTag(index2-5) as UIButton
                btn27.enabled = true
            }
            }else if (index1 == 3){
                if (index1*5+index2+1 == 16){
                    var btn28: UIButton = self.view.viewWithTag(index2+5) as UIButton
                    btn28.enabled = true
                    var btn29: UIButton = self.view.viewWithTag(index2-5) as UIButton
                    btn29.enabled = true
                    var btn30: UIButton = self.view.viewWithTag(index2+1) as UIButton
                    btn30.enabled = true
                }else if (index1*5+index2+1 == 20){

                    var btn31: UIButton = self.view.viewWithTag(index2-5) as UIButton
                    btn31.enabled = true
                    var btn32: UIButton = self.view.viewWithTag(index2-1 ) as UIButton
                    btn32.enabled = true
                    var btn33: UIButton = self.view.viewWithTag(index2+5) as UIButton
                    btn33.enabled = true
                }else{

                    var btn34: UIButton = self.view.viewWithTag(index2+5) as UIButton
                    btn34.enabled = true
                    var btn35: UIButton = self.view.viewWithTag(index2+1) as UIButton
                    btn35.enabled = true
                    var btn36: UIButton = self.view.viewWithTag(index2-1) as UIButton
                    btn36.enabled = true
                    var btn37: UIButton = self.view.viewWithTag(index2-5) as UIButton
                    btn37.enabled = true
                }


        }else{
                if (index1*5+index2+1 == 21){

                    var btn38: UIButton = self.view.viewWithTag(index2-5) as UIButton
                    btn38.enabled = true
                    var btn39: UIButton = self.view.viewWithTag( index2+1 ) as UIButton
                    btn39.enabled = true
                }else if (index1*5+index2+1 == 25){

                    var btn40: UIButton = self.view.viewWithTag(index2-5) as UIButton
                    btn40.enabled = true
                    var btn41: UIButton = self.view.viewWithTag(index2-1 ) as UIButton
                    btn41.enabled = true
                }else{
//                    index1 = 4
//                    index2 = index2-21
                    var btn42: UIButton = self.view.viewWithTag(index2+1) as UIButton
                    btn42.enabled = true
                    var btn43: UIButton = self.view.viewWithTag(index2-1) as UIButton
                    btn43.enabled = true
                    var btn44: UIButton = self.view.viewWithTag(index2-5) as UIButton
                    btn44.enabled = true
                }

            }
        }
    else{
    if (index3 == 0 ){
    if (index3+index4+1 == 1){
    var btn1: UIButton = self.view.viewWithTag(index4+5) as UIButton
    btn1.enabled = true
    var btn2: UIButton = self.view.viewWithTag(index4+1) as UIButton
    btn2.enabled = true
    }else if (index3+index4+1 == 5){
    var btn3: UIButton = self.view.viewWithTag(index4+5) as UIButton
    btn3.enabled = true
    var btn4: UIButton = self.view.viewWithTag(index4-1) as UIButton
    btn4.enabled = true
    }else{
    var btn5 = self.view.viewWithTag(index4+5) as UIButton
    btn5.enabled = true
    var btn6: UIButton = self.view.viewWithTag(index4+1) as UIButton
    btn6.enabled = true
    var btn7: UIButton = self.view.viewWithTag(index4-1 ) as UIButton
    btn7.enabled = true
    
    }
    }else if(index3 == 1){
    if (index3*5+index4+1 == 6){
    
    var btn8: UIButton = self.view.viewWithTag(index4+5) as UIButton
    btn8.enabled = true
    var btn9: UIButton = self.view.viewWithTag(index4-5) as UIButton
    btn9.enabled = true
    var btn10: UIButton = self.view.viewWithTag( index4+1 ) as UIButton
    btn10.enabled = true
    }else if (index3*5+index4+1 == 10){
    
    var btn11: UIButton = self.view.viewWithTag(index4-5) as UIButton
    btn11.enabled = true
    var btn12: UIButton = self.view.viewWithTag(index4-1 ) as UIButton
    btn12.enabled = true
    var btn13: UIButton = self.view.viewWithTag(index4+5) as UIButton
    btn13.enabled = true
    }else{
    
    var btn14: UIButton = self.view.viewWithTag(index4+5) as UIButton
    btn14.enabled = true
    var btn15: UIButton = self.view.viewWithTag(index4+1) as UIButton
    btn15.enabled = true
    var btn16: UIButton = self.view.viewWithTag(index4-1) as UIButton
    btn16.enabled = true
    var btn17: UIButton = self.view.viewWithTag(index4-5) as UIButton
    btn17.enabled = true
    
    }
    }else if (index3 == 2){
    if (index3*5+index4+1 == 11){
    var btn18: UIButton = self.view.viewWithTag(index4+5 ) as UIButton
    btn18.enabled = true
    var btn19: UIButton = self.view.viewWithTag(index4-5) as UIButton
    btn19.enabled = true
    var btn20: UIButton = self.view.viewWithTag( index4+1 ) as UIButton
    btn20.enabled = true
    }else if (index3*5+index4+1 == 15){
    
    var btn21: UIButton = self.view.viewWithTag(index4-5) as UIButton
    btn21.enabled = true
    var btn22: UIButton = self.view.viewWithTag(index4-1 ) as UIButton
    btn22.enabled = true
    var btn23: UIButton = self.view.viewWithTag(index4+5) as UIButton
    btn23.enabled = true
    }else{
    var btn24: UIButton = self.view.viewWithTag(index4+5) as UIButton
    btn24.enabled = true
    var btn25: UIButton = self.view.viewWithTag(index4+1) as UIButton
    btn25.enabled = true
    var btn26: UIButton = self.view.viewWithTag(index4-1) as UIButton
    btn26.enabled = true
    var btn27: UIButton = self.view.viewWithTag(index4-5) as UIButton
    btn27.enabled = true
    }
    }else if (index3 == 3){
    if (index3*5+index4+1 == 16){
    var btn28: UIButton = self.view.viewWithTag(index4+5) as UIButton
    btn28.enabled = true
    var btn29: UIButton = self.view.viewWithTag(index4-5) as UIButton
    btn29.enabled = true
    var btn30: UIButton = self.view.viewWithTag(index4+1) as UIButton
    btn30.enabled = true
    }else if (index3*5+index4+1 == 20){
    
    var btn31: UIButton = self.view.viewWithTag(index4-5) as UIButton
    btn31.enabled = true
    var btn32: UIButton = self.view.viewWithTag(index4-1 ) as UIButton
    btn32.enabled = true
    var btn33: UIButton = self.view.viewWithTag(index4+5) as UIButton
    btn33.enabled = true
    }else{
    
    var btn34: UIButton = self.view.viewWithTag(index4+5) as UIButton
    btn34.enabled = true
    var btn35: UIButton = self.view.viewWithTag(index4+1) as UIButton
    btn35.enabled = true
    var btn36: UIButton = self.view.viewWithTag(index4-1) as UIButton
    btn36.enabled = true
    var btn37: UIButton = self.view.viewWithTag(index4-5) as UIButton
    btn37.enabled = true
    }
    
    
    }else{
    if (index3*5+index4+1 == 21){
    
    var btn38: UIButton = self.view.viewWithTag(index4-5) as UIButton
    btn38.enabled = true
    var btn39: UIButton = self.view.viewWithTag(index4+1 ) as UIButton
    btn39.enabled = true
    }else if (index1*5+index2+1 == 25){
    
    var btn40: UIButton = self.view.viewWithTag(index4-5) as UIButton
    btn40.enabled = true
    var btn41: UIButton = self.view.viewWithTag(index4-1 ) as UIButton
    btn41.enabled = true
    }else{
    //                    index1 = 4
    //                    index2 = index2-21
    var btn42: UIButton = self.view.viewWithTag(index4+1) as UIButton
    btn42.enabled = true
    var btn43: UIButton = self.view.viewWithTag(index4-1) as UIButton
    btn43.enabled = true
    var btn44: UIButton = self.view.viewWithTag(index4-5) as UIButton
    btn44.enabled = true
    }
    }
    }
    }
//        if(index1 == 0){
//            self.btClick(UIButton())
//        }else if(index1 == 1){
//            self.btClick2(UIButton())
//        }else if(index1 == 2){
//            self.btClick3(UIButton())
//        }else if(index1 == 3){
//            self.btClick4(UIButton())
//        }else if(index1 == 4){
//            self.btClick5(UIButton())
//        }
    

    func btClick(){
    
        if change == true{
        tag1 = 0
        tag2 = index2
        index1 = 0
        banArray[0][tag2-1] = 1
        banArray[index1][index2] = 0
        }else{
        tag1 = 0
        tag2 = index4
        index3 = 0
        banArray[0][tag2-1] = 2
        banArray[index3][index4] = 0
    
        }
        NSLog("\(banArray)");
        
        
    }

     func btClick2(){
            if change == true{
                tag1 = 1
                tag2 = index2
                index1 = 1
                banArray[1][tag2-6] = 1
                banArray[index1][index2] = 0
            }else{
                tag1 = 1
                tag2 = index4
                index3 = 1
                banArray[1][tag2-6] = 2
                banArray[index3][index4] = 0
            }

        NSLog("\(banArray)");
    }
    func btClick3(){
        if change == true{
            tag1 = 2
            tag2 = index2
            index1 = 2
            banArray[2][tag2-11] = 1
            banArray[index3][index4] = 0
        }else{
            tag1 = 2
            tag2 = index4
            index3 = 2
            banArray[2][tag2-11] = 2
            banArray[index3][index4] = 0
        }
        
        NSLog("\(banArray)");
    }
    func btClick4(){
        if change == true{
            tag1 = 3
            tag2 = index2
            index1 = 3
            banArray[3][tag2-16] = 1
            banArray[index3][index4] = 0
        }else{
            tag1 = 3
            tag2 = index4
            index3 = 3
            banArray[3][tag2-16] = 2
            banArray[index3][index4] = 0
        }
        
        NSLog("\(banArray)");
    }
    
    
func btClick5(){
    if change == true{
        tag1 = 4
        tag2 = index2
        index1 = 4
        banArray[4][tag2-21] = 1
        banArray[index3][index4] = 0
    }else{
        tag1 = 4
        tag2 = index4
        index3 = 4
        banArray[4][tag2-21] = 2
        banArray[index3][index4] = 0
    }
    
    NSLog("\(banArray)");
}


}

