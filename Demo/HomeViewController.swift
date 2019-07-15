//
//  HomeViewController.swift
//  Demo
//
//  Created by apple on 2019/7/2.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
import SnapKit
class HomeViewController: UIViewController {
    
    
    var m:HomeProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        let w = self.view.frame.width
        let h = self.view.frame.height - 20
                
        let table = CTable()
        self.view.addSubview(table)
        table.snp.makeConstraints { (make) in
            
            make.top.equalTo(64)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            
        }
        
        table.register([T1Cell.classForCoder()])
        
        if let v = m?.arrayVue{
            table.v_array(vue: v)
        }
        
        if let v = m?.indexVue{
            table.v_index(vue: v)
        }
        
        m?.startListen()
    }
    
}
protocol HomeProtocol {
    
    var arrayVue:Vue{get}
    var indexVue:Vue{get}
    func startListen()
    
}

