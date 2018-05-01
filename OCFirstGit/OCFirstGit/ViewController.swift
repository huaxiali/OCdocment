//
//  ViewController.swift
//  OCFirstGit
//
//  Created by 一狂小生 on 2018/4/2.
//  Copyright © 2018年 1226042260@qq.con. All rights reserved.
//

import UIKit
import AudioToolbox

let ScreenWidth = UIScreen.main.bounds.width
let ScreenHeight = UIScreen.main.bounds.height

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let kkkk:NSString = "NSString()"
        kkkk.nummmmm()
        
        let disBtn = UIButton(frame: CGRect(origin: CGPoint(x: ScreenWidth / 2, y: ScreenHeight / 2), size: CGSize(width: 40, height: 40)))
        disBtn.backgroundColor = UIColor.red
        disBtn.addTarget(self, action: #selector(touchDone), for: .touchUpInside)
        self.view.addSubview(disBtn)
        let timer = Timer(timeInterval: 1800, repeats: true, block: { (ti) in
            for _ in 0...5 {
                sleep(2)
                AudioServicesPlaySystemSound(1304)
                sleep(2)
                AudioServicesPlaySystemSound(1014)
            }
        })
        RunLoop.current.add(timer, forMode: .defaultRunLoopMode)
    }

    @objc func touchDone() {
        let rootVC = RootVC()
        rootVC.block = { (str:String) in
            print("str:\(str)")
        }
        self.navigationController?.pushViewController(rootVC, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

