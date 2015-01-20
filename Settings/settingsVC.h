//
//  settingsVC.h
//  BCA
//
//  Created by Zafar Loynmoon on 16/01/15.
//  Copyright (c) 2015 Hightech. All rights reserved.
//

#import "ViewController.h"

@interface settingsVC : ViewController<LXActivityDelegate>{
    
    LXActivity *lxActivity;
    UIButton *Homebtn;
    UIButton *contactbtn;
    UIButton *groupbtn;
    UIButton *searchbtn;
    UIButton *settingbtn;
    
}
@property (weak, nonatomic) IBOutlet UITableView *viewtlb;
@property (assign, nonatomic) int tapIndex;
@end
