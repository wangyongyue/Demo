//
//  Registered.swift
//  Demo
//
//  Created by apple on 2019/7/30.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class Registered:Vue,V_ViewControllerProtocol,POSTProtocol{
    var array = [VueData]()

    func v_viewController() -> UIViewController{
        let vc = ListViewController()
        vc.m = self
        vc.navigationItem.title = "注册"
        return vc
        
    }
    
    override func v_start() {
        
     
        self.v_index(vId: INDEXID) { (index) in
            
            if index == 3{
                
                let params = TestHttp()
                POST.request(params:params, http: self)
                
            }
            
        }
        
       
        let username = LoginUsernameCellModel()
        username.name = "用户名"
        username.placeholder = "请输入用户名"
       
        let vcode = LoginVCodeCellModel()
        vcode.name = "验证码"
        vcode.placeholder = "请输入验证码"

        let paseword = LoginPasswordCellModel()
        paseword.name = "密码"
        paseword.placeholder = "请输入密码"

        let login = LoginButtonCellModel()
        login.name = "登录"
       
        
        self.array.append(username)
        self.array.append(vcode)
        self.array.append(paseword)
        self.array.append(login)
        self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
            
            return self.array
            
        }
        
        
        
    }
    
    func POSTHttpWithData(_ httP: POSTProtocol, _ data: Any) {
        
       UIViewController.toHome()
        
    }
    func POSTHttpWithError(_ httP: POSTProtocol, _ error: String) {
        
        
    }
    
    
}



