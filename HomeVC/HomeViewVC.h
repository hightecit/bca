//
//  HomeViewVC.h
//  BCA
//
//  Created by Zafar Loynmoon on 13/01/15.
//  Copyright (c) 2015 Hightech. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface HomeViewVC : ViewController{
    
   NSArray *headerarr;
   AppDelegate *appDelegate;
    
    UIButton *Homebtn;
    UIButton *contactbtn;
    UIButton *groupbtn;
    UIButton *searchbtn;
    UIButton *settingbtn;
    
  
}
@property (weak, nonatomic) IBOutlet UITableView *tlb;

@end
