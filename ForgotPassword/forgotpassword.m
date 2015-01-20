//
//  forgotpassword.m
//  BCA
//
//  Created by Zafar Loynmoon on 17/01/15.
//  Copyright (c) 2015 Hightech. All rights reserved.
//

#import "forgotpassword.h"

@interface forgotpassword ()

@end

@implementation forgotpassword

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

- (IBAction)btnback:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
