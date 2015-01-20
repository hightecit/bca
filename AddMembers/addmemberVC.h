//
//  addmemberVC.h
//  BCA
//
//  Created by Zafar Loynmoon on 16/01/15.
//  Copyright (c) 2015 Hightech. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
@interface addmemberVC : ViewController{
   
     AppDelegate *appDelegate;
    UIButton *Homebtn;
    UIButton *contactbtn;
    UIButton *groupbtn;
    UIButton *searchbtn;
    UIButton *settingbtn;
}
- (IBAction)btnback:(id)sender;
- (IBAction)btndone:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *txtsearch;

@end
