//
//  Setting.swift
//  Demo
//
//  Created by apple on 2019/7/29.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class Setting:Vue,V_ViewControllerProtocol,POSTProtocol{
    var array = [VueData]()

    func v_viewController() -> UIViewController{
        let vc = ListViewController()
        vc.m = self
        vc.navigationItem.title = "设置"
        return vc
        
    }
    
    override func v_start() {
        
        let params = TestHttp()
        POST.request(params:params, http: self)
        
        self.v_index(vId: INDEXID) { (index) in
            
            if index == 4{
                
                UIViewController.toLogin()
            }
        }
    }
    
    func POSTHttpWithData(_ httP: POSTProtocol, _ data: Any) {
        
        let m1 = SettingCellModel()
        m1.name = "setting"
        
        let m2 = SettingCellModel()
        m2.name = "setting"
        
        let m3 = SettingCellModel()
        m3.name = "setting"
        
        let m4 = SettingCellModel()
        m4.name = "setting"
        
        let m5 = SettingCellModel()
        m5.name = "out"
        
        array.append(m1)
        array.append(m2)
        array.append(m3)
        array.append(m4)
        array.append(m5)

        self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
            
            return self.array
            
        }
        
        
    }
    func POSTHttpWithError(_ httP: POSTProtocol, _ error: String) {
        
        
    }
    
    
}

