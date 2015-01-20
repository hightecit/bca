//
//  SearchVC.h
//  BCA
//
//  Created by Zafar Loynmoon on 16/01/15.
//  Copyright (c) 2015 Hightech. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
@interface SearchVC : ViewController{

    AppDelegate *appDelegate;
    
    UIButton *Homebtn;
    UIButton *contactbtn;
    UIButton *groupbtn;
    UIButton *searchbtn;
    UIButton *settingbtn;
    
    

}
@property (weak, nonatomic) IBOutlet UITableView *tblview;

@end
