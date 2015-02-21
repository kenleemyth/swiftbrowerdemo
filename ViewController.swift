//
//  ViewController.swift
//  jobswebapp
//
//  Created by liyong on 15/2/19.
//  Copyright (c) 2015年 Myth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var textbox: UITextField!
    @IBOutlet var wv:UIWebView!

    @IBAction func btngo(sender:AnyObject){
        wv.loadRequest(NSURLRequest(URL:NSURL(string: textbox.text)!));
        textbox.resignFirstResponder() //输入完网址隐藏软键盘,取消第一者响应

    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        wv.loadRequest(NSURLRequest(URL:NSURL(string: "http://www.jobs123.cn")!));
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

