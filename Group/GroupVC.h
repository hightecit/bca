//
//  GroupVC.h
//  BCA
//
//  Created by Zafar Loynmoon on 16/01/15.
//  Copyright (c) 2015 Hightech. All rights reserved.
//

#import "ViewController.h"

@interface GroupVC : ViewController{
    UIButton *Homebtn;
    UIButton *contactbtn;
    UIButton *groupbtn;
    UIButton *searchbtn;
    UIButton *settingbtn;
    
}
@property (weak, nonatomic) IBOutlet UITableView *tlbview;
@property (weak, nonatomic) IBOutlet UITextField *txtsearch;

@end
