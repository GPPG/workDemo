//
//  HomeTableViewDataController.swift
//  WX
//
//  Created by 郭鹏 on 2019/10/21.
//  Copyright © 2019 郭鹏. All rights reserved.
//

import UIKit

typealias YTCallBack = () -> Void

class HomeTableViewDataController: NSObject {

    
    var modeArray: [HomeContentMode]? = (NSMutableArray.init() as! [HomeContentMode])
    
    var completionCallback: YTCallBack?
    
    

    
    func requestData(callback: YTCallBack){
        
        
        let iconArray = loadIconArray()
        
        
        for i in 0 ..< iconArray.count {
            
            let contentMode = HomeContentMode.init()
            contentMode.iconImageStr = iconArray[i]
            contentMode.nameStr = nameArray[i]
            contentMode.messageStr = messagesArray[i]
            modeArray?.append(contentMode)
        }
        callback()
    }

    
    
    // MARK: - data
    
   fileprivate func loadIconArray() ->[String] {
    
    
    let tempArray = NSMutableArray.init()
    
    
    let a = 24
    
    for i in 0 ..< a {
        tempArray.add("\(i).ipg")
    }
    return tempArray as! [String]
    
    }
    
    fileprivate var nameArray = ["二龙湖浩哥",
                                 "微风",
                                 "夜在哭泣",
                                 "GSD_iOS",
                                 "hello world",
                                 "大脸猫",
                                 "你似不似傻",
                                 "天天向上",
                                 "不爱掏粪男孩",
                                 "最爱欧巴",
                                 "大长腿思密达",
                                 "别给我晒脸",
                                 "可爱男孩",
                                 "筷子姐妹",
                                 "法海你不懂爱",
                                 "长城长",
                                 "老北京麻辣烫",
                                 "我不搞笑",
                                 "原来我不帅",
                                 "亲亲我的宝贝",
                                 "请叫我吴彦祖",
                                 "帅锅莱昂纳多",
                                 "星星之火",
                                 "雅蠛蝶~雅蠛蝶"]
    
    
    fileprivate var messagesArray = ["二龙湖浩哥：什么事？🐂🐂🐂🐂",
                                     "微风：麻蛋！！！",
                                     "夜在哭泣：好好地，🐂别瞎胡闹",
                                     "GSD_iOS：SDAutoLayout  下载地址http://www.cocoachina.com/ios/20151223/14778.html",
                                     "hello world：🐂🐂🐂我不懂",
                                     "大脸猫：这。。。。。。酸爽~ http://www.cocoachina.com/ios/20151223/14778.html",
                                     "你似不似傻：呵呵🐎🐎🐎🐎🐎🐎",
                                     "天天向上：辛苦了！",
                                     "不爱掏粪男孩：新年快乐！猴年大吉！摸摸哒 http://www.cocoachina.com/ios/20151223/14778.html",
                                     "最爱欧巴：[呲牙][呲牙][呲牙]",
                                     "大长腿思密达：[图片]",
                                     "别给我晒脸：坑死我了。。。。。",
                                     "可爱男孩：你谁？？？🐎🐎🐎🐎",
                                     "筷子姐妹：和尚。。尼姑。。",
                                     "法海你不懂爱：春晚太难看啦，妈蛋的🐎🐎🐎🐎🐎🐎🐎🐎",
                                     "长城长：好好好~~~",
                                     "老北京麻辣烫：约起 http://www.cocoachina.com/ios/20151223/14778.html",
                                     "我不搞笑：寒假过得真快",
                                     "原来我不帅：有木有人儿？",
                                     "亲亲我的宝贝：你🐎说🐎啥🐎呢",
                                     "请叫我吴彦祖：好搞笑🐎🐎🐎，下次还来",
                                     "帅锅莱昂纳多：我不理解 http://www.cocoachina.com/ios/20151223/14778.html",
                                     "星星之火：脱掉，脱掉，统统脱掉🐎",
                                     "雅蠛蝶~雅蠛蝶：好脏，好污，好喜欢"
                                     ]

    
    
    
    
    
    
}
