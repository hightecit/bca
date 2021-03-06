//
//  creategroupVC.m
//  BCA
//
//  Created by Zafar Loynmoon on 16/01/15.
//  Copyright (c) 2015 Hightech. All rights reserved.
//

#import "creategroupVC.h"

@interface creategroupVC ()

@end

@implementation creategroupVC

- (void)viewDidLoad {
    [super viewDidLoad];
    //_tlb.layer.cornerRadius=5.0;
    _txtgroup.layer.borderColor=[UIColor  colorWithRed:217.0/255.0 green:217.0/255.0 blue:217.0/255.0 alpha:1.0].CGColor;
    _txtgroup.layer.borderWidth=1.0;
    
    Homebtn = [UIButton buttonWithType:UIButtonTypeCustom];
    contactbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    groupbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    searchbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    settingbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    
    [Homebtn addTarget:self
                action:@selector(ahome)
      forControlEvents:UIControlEventTouchUpInside];
    [Homebtn setTitle:@"" forState:UIControlStateNormal];
    Homebtn.frame = CGRectMake(0,518,64,50);
    Homebtn.adjustsImageWhenHighlighted = NO;
    [Homebtn setImage:[UIImage imageNamed:@"h.png"] forState:UIControlStateNormal];
    [Homebtn setImage:[UIImage imageNamed:@"h.png"] forState:UIControlStateSelected];
    [self.view addSubview:Homebtn];
    
    
    
    [contactbtn addTarget:self
                   action:@selector(acontact)
         forControlEvents:UIControlEventTouchUpInside];
    [contactbtn setTitle:@"" forState:UIControlStateNormal];
    contactbtn.frame = CGRectMake(64,518,64,50);
    contactbtn.adjustsImageWhenHighlighted = NO;
    
    [contactbtn setImage:[UIImage imageNamed:@"c.png"] forState:UIControlStateNormal];
    [contactbtn setImage:[UIImage imageNamed:@"c.png"] forState:UIControlStateSelected];
    [self.view addSubview:contactbtn];
    
    
    
    [groupbtn addTarget:self
                 action:@selector(agroup)
       forControlEvents:UIControlEventTouchUpInside];
    [groupbtn setTitle:@"" forState:UIControlStateNormal];
    groupbtn.frame = CGRectMake(128,518,64,50);
    groupbtn.adjustsImageWhenHighlighted = NO;
    
    [groupbtn setImage:[UIImage imageNamed:@"g.png"] forState:UIControlStateNormal];
    [groupbtn setImage:[UIImage imageNamed:@"g.png"] forState:UIControlStateSelected];
    [self.view addSubview:groupbtn];
    
    
    
    [searchbtn addTarget:self
                  action:@selector(asearch)
        forControlEvents:UIControlEventTouchUpInside];
    [searchbtn setTitle:@"" forState:UIControlStateNormal];
    searchbtn.frame = CGRectMake(192,518,64,50);
    searchbtn.adjustsImageWhenHighlighted = NO;
    
    [searchbtn setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
    [searchbtn setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateSelected];
    [self.view addSubview:searchbtn];
    
    [settingbtn addTarget:self
                   action:@selector(asetting)
         forControlEvents:UIControlEventTouchUpInside];
    [settingbtn setTitle:@"" forState:UIControlStateNormal];
    settingbtn.frame = CGRectMake(256,518,64,50);
    settingbtn.adjustsImageWhenHighlighted = NO;
    
    [settingbtn setImage:[UIImage imageNamed:@"setting.png"] forState:UIControlStateNormal];
    [settingbtn setImage:[UIImage imageNamed:@"setting.png"] forState:UIControlStateSelected];
    [self.view addSubview:settingbtn];

}

-(void)ahome{
    
    HomeViewVC *verify = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeVie"];
    [self.navigationController pushViewController:verify animated:NO];
    
}
-(void)acontact{
    
    contact *verify = [self.storyboard instantiateViewControllerWithIdentifier:@"contact"];
    [self.navigationController pushViewController:verify animated:NO];
}
-(void)agroup{
    
    //  GroupVC *verify = [self.storyboard instantiateViewControllerWithIdentifier:@"Group"];
    //  [self.navigationController pushViewController:verify animated:NO];
}
-(void)asearch{
    SearchVC *verify = [self.storyboard instantiateViewControllerWithIdentifier:@"Search"];
    [self.navigationController pushViewController:verify animated:NO];
}
-(void)asetting{
    
    settingsVC *verify = [self.storyboard instantiateViewControllerWithIdentifier:@"settings"];
    [self.navigationController pushViewController:verify animated:NO];
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


@end
