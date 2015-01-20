//
//  aboutusVC.m
//  BCA
//
//  Created by Zafar Loynmoon on 16/01/15.
//  Copyright (c) 2015 Hightech. All rights reserved.
//

#import "aboutusVC.h"

@interface aboutusVC ()

@end

@implementation aboutusVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)btnback:(id)sender {
    
    [self.navigationController popViewControllerAnimated:NO];
}
@end
