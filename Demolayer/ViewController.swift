//
//  ViewController.swift
//  Demolayer
//
//  Created by Phạm Hồng Sơn on 25/10/2023.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        var space = 100
       let myview = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        myview.center = self.view.center
        myview.backgroundColor = .gray
       
        self.view.addSubview(myview)
        
        for i in 0..<3{
            for j in 0..<3{
                if i == 0 || (i == 1 && j == 0){
                    let submyview = Myview(frame: CGRect(x: i * space, y: j * space, width: 100, height: 100),color: .orange)
                    myview.addSubview(submyview)
                }
            }
        }
    }


}

