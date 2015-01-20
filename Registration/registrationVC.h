//
//  registrationVC.h
//  BCA
//
//  Created by Zafar Loynmoon on 17/01/15.
//  Copyright (c) 2015 Hightech. All rights reserved.
//

#import "ViewController.h"

@interface registrationVC : ViewController
- (IBAction)btnback:(id)sender;
@property (weak, nonatomic) IBOutlet TPKeyboardAvoidingScrollView *scr;
@property (strong, nonatomic) IBOutlet UITextField *txtname;
@property (strong, nonatomic) IBOutlet UITextField *txtnumber;
@property (strong, nonatomic) IBOutlet UITextField *txtcomp;
@property (strong, nonatomic) IBOutlet UITextField *txtuser;
@property (strong, nonatomic) IBOutlet UITextField *txtpassword;
@property (strong, nonatomic) IBOutlet UITextField *txtconformpassword;
@property (strong, nonatomic) IBOutlet UITextField *txtemail;
@property (strong, nonatomic) IBOutlet UITextField *txtphone;
@property (strong, nonatomic) IBOutlet UIButton *btnsignup;


@end
