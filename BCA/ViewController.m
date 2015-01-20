//
//  ViewController.m
//  BCA
//
//  Created by Zafar Loynmoon on 13/01/15.
//  Copyright (c) 2015 Hightech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize login;
- (void)viewDidLoad
{
    [super viewDidLoad];
 
    login.layer.borderWidth=1.0;
    login.layer.cornerRadius = 5.0;
    login.layer.borderColor = [UIColor grayColor].CGColor;
	
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
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
