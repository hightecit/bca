//
//  registrationVC.m
//  BCA
//
//  Created by Zafar Loynmoon on 17/01/15.
//  Copyright (c) 2015 Hightech. All rights reserved.
//

#import "registrationVC.h"

@interface registrationVC ()

@end

@implementation registrationVC
@synthesize btnsignup,txtname,txtcomp,txtconformpassword,txtemail,txtnumber,txtpassword,txtphone,txtuser;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    btnsignup.layer.borderWidth=1.0;
    btnsignup.layer.cornerRadius = 5.0;
    btnsignup.layer.borderColor = [UIColor grayColor].CGColor;
    
    txtname.layer.borderWidth=0.4;
    txtname.layer.sublayerTransform = CATransform3DMakeTranslation(7, 0, 0);
    txtname.layer.borderColor = [UIColor grayColor].CGColor;
    
    txtnumber.layer.borderWidth=0.4;
     txtnumber.layer.sublayerTransform = CATransform3DMakeTranslation(7, 0, 0);
    txtnumber.layer.borderColor = [UIColor grayColor].CGColor;
    
    txtcomp.layer.borderWidth=0.4;
     txtcomp.layer.sublayerTransform = CATransform3DMakeTranslation(7, 0, 0);
    txtcomp.layer.borderColor = [UIColor grayColor].CGColor;
    
    txtuser.layer.borderWidth=0.4;
     txtuser.layer.sublayerTransform = CATransform3DMakeTranslation(7, 0, 0);
    txtuser.layer.borderColor = [UIColor grayColor].CGColor;
    
    txtpassword.layer.borderWidth=0.4;
     txtpassword.layer.sublayerTransform = CATransform3DMakeTranslation(7, 0, 0);
    txtpassword.layer.borderColor = [UIColor grayColor].CGColor;
    
    txtconformpassword.layer.borderWidth=0.4;
     txtconformpassword.layer.sublayerTransform = CATransform3DMakeTranslation(7, 0, 0);
    txtconformpassword.layer.borderColor = [UIColor grayColor].CGColor;
    
    txtemail.layer.borderWidth=0.4;
     txtemail.layer.sublayerTransform = CATransform3DMakeTranslation(7, 0, 0);
    txtemail.layer.borderColor = [UIColor grayColor].CGColor;
    
    txtphone.layer.borderWidth=0.4;
     txtphone.layer.sublayerTransform = CATransform3DMakeTranslation(7, 0, 0);
    txtphone.layer.borderColor = [UIColor grayColor].CGColor;
    
   
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (IBAction)btnback:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event

{
    
    [self.view endEditing:YES];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField

{
    
    [textField resignFirstResponder];
    
    return YES;
    
}
@end
