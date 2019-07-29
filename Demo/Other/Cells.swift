//
//  Cells.swift
//  Demo
//
//  Created by wangyongyue on 2019/7/28.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class Cells: NSObject {

    static func registerCells(){
        
        Vue.register(aClass: T1Model.classForCoder(), toClass: T1Cell.classForCoder())
        Vue.register(aClass: TabHeaderCellModel.classForCoder(), toClass: TabHeaderCell.classForCoder())
        Vue.register(aClass: TabContentCellModel.classForCoder(), toClass: TabContentCell.classForCoder())

        Vue.register(aClass: LoginHeaderCellModel.classForCoder(), toClass: LoginHeaderCell.classForCoder())
        Vue.register(aClass: LoginUsernameCellModel.classForCoder(), toClass: LoginUsernameCell.classForCoder())
        Vue.register(aClass: LoginPasswordCellModel.classForCoder(), toClass: LoginPasswordCell.classForCoder())
        Vue.register(aClass: LoginForgetButtonCellModel.classForCoder(), toClass: LoginForgetButtonCell.classForCoder())
        Vue.register(aClass: LoginButtonCellModel.classForCoder(), toClass: LoginButtonCell.classForCoder())
        Vue.register(aClass: MineHeaderCellModel.classForCoder(), toClass: MineHeaderCell.classForCoder())
        Vue.register(aClass: MineToCellModel.classForCoder(), toClass: MineToCell.classForCoder())
        Vue.register(aClass: MineClearCellModel.classForCoder(), toClass: MineClearCell.classForCoder())
        Vue.register(aClass: SettingCellModel.classForCoder(), toClass: SettingCell.classForCoder())
        Vue.register(aClass: PhotoCellModel.classForCoder(), toClass: PhotoCell.classForCoder())
        Vue.register(aClass: PlayerImageCellModel.classForCoder(), toClass: PlayerImageCell.classForCoder())
        Vue.register(aClass: TableBannerCell.classForCoder(), toClass: TableContentCellModel.classForCoder())
       

    }
}
