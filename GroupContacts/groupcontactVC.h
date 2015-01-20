//
//  groupcontactVC.h
//  BCA
//
//  Created by Zafar Loynmoon on 17/01/15.
//  Copyright (c) 2015 Hightech. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
@interface groupcontactVC : ViewController{
    
   AppDelegate *appDelegate;
}
@property (weak, nonatomic) IBOutlet UITableView *tlb;
- (IBAction)btnback:(id)sender;
- (IBAction)creategroup:(id)sender;

@end
