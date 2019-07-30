//
//  Login.swift
//  Demo
//
//  Created by apple on 2019/7/29.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class Login:Vue,V_ViewControllerProtocol,POSTProtocol{
    
    var array = [VueData]()

    func v_viewController() -> UIViewController{
        let vc = ListViewController()
        vc.m = self
        vc.navigationItem.title = "登录"
        return vc
        
    }
    
    func POSTHttpWithData(_ httP: POSTProtocol, _ data: Any) {
        
        UIViewController.toHome()

    }
    func POSTHttpWithError(_ httP: POSTProtocol, _ error: String) {
        
        
    }
    
    override func v_start() {
        
        self.v_if(vId: NAVBACKID) { () -> Bool? in
            
            return true
        }
        
        self.v_index(vId: INDEXID) { (index) in
            
            if index == 3{
                
                Router.push(Forget(), nil, nil)
                
            }else if index == 4{
                
                let params = TestHttp()
                POST.request(params:params, http: self)
               

            }else if index == 5{
                
                Router.push(Registered(), nil, nil)

            }
            
        }
        let header = LoginHeaderCellModel()
        header.name = "heder"
        
        let username = LoginUsernameCellModel()
        username.name = "用户名"
        username.placeholder = "请输入用户名"
        
        let paseword = LoginPasswordCellModel()
        paseword.name = "密码"
        paseword.placeholder = "请输入密码"

        let forgetPW = LoginForgetButtonCellModel()
        forgetPW.name = "忘记密码"
        
        let login = LoginButtonCellModel()
        login.name = "登录"
        
        let register = LoginButtonCellModel()
        register.name = "注册"
        
        let other = LoginOtherCellModel()
        other.name = "第三方登录"
        
        
        self.array.append(header)
        self.array.append(username)
        self.array.append(paseword)
        self.array.append(forgetPW)
        self.array.append(login)
        self.array.append(register)
        self.array.append(other)

        self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
            
            return self.array
            
        }
    }

    
    
}


