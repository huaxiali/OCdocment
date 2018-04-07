//
//  RootVC.swift
//  OCFirstGit
//
//  Created by 一狂小生 on 2018/4/7.
//  Copyright © 2018年 1226042260@qq.con. All rights reserved.
//

import UIKit

typealias ClosureBlock = (String) -> Void

class RootVC: UIViewController {

    var block: ClosureBlock?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "RootVC"
        let disBtn = UIButton(frame: CGRect(x: 100, y: 100, width: 40, height: 40))
        //(frame: CGRect(origin: CGPoint(x: ScreenWidth / 2, y: ScreenHeight / 2), size: CGSize(width: 40, height: 40)))
        
        disBtn.backgroundColor = UIColor.red
        disBtn.addTarget(self, action: #selector(touchDone), for: .touchUpInside)
        self.view.addSubview(disBtn)
    }
    
    @objc func touchDone() {
        self.navigationController?.popViewController(animated: true)
        self.block!("Come from \(String(describing: self.title))")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
