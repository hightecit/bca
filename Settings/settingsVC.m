//
//  settingsVC.m
//  BCA
//
//  Created by Zafar Loynmoon on 16/01/15.
//  Copyright (c) 2015 Hightech. All rights reserved.
//

#import "settingsVC.h"
#import "settingsVCCell.h"
@interface settingsVC (){
    
    NSArray *arrsettings;
}

@end

@implementation settingsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
     arrsettings =@[@"About us",@"Terms & Conditions",@"Privacy Policy",@"Share App",@"Socials"];
    
    Homebtn = [UIButton buttonWithType:UIButtonTypeCustom];
    contactbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    groupbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    searchbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    settingbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    Homebtn.adjustsImageWhenHighlighted = NO;
    contactbtn.adjustsImageWhenHighlighted = NO;
    groupbtn.adjustsImageWhenHighlighted = NO;
    searchbtn.adjustsImageWhenHighlighted = NO;
    settingbtn.adjustsImageWhenHighlighted = NO;
    
    
    [Homebtn addTarget:self
                action:@selector(ahome)
      forControlEvents:UIControlEventTouchUpInside];
    [Homebtn setTitle:@"" forState:UIControlStateNormal];
    Homebtn.frame = CGRectMake(0,518,64,50);
    
    [Homebtn setImage:[UIImage imageNamed:@"h.png"] forState:UIControlStateNormal];
    [Homebtn setImage:[UIImage imageNamed:@"h.png"] forState:UIControlStateSelected];
    [self.view addSubview:Homebtn];
    
    
    
    [contactbtn addTarget:self
                   action:@selector(acontact)
         forControlEvents:UIControlEventTouchUpInside];
    [contactbtn setTitle:@"" forState:UIControlStateNormal];
    contactbtn.frame = CGRectMake(64,518,64,50);
    [contactbtn setImage:[UIImage imageNamed:@"c.png"] forState:UIControlStateNormal];
    [contactbtn setImage:[UIImage imageNamed:@"c.png"] forState:UIControlStateSelected];
    [self.view addSubview:contactbtn];
    
    
    
    [groupbtn addTarget:self
                 action:@selector(agroup)
       forControlEvents:UIControlEventTouchUpInside];
    [groupbtn setTitle:@"" forState:UIControlStateNormal];
    groupbtn.frame = CGRectMake(128,518,64,50);
    [groupbtn setImage:[UIImage imageNamed:@"g.png"] forState:UIControlStateNormal];
    [groupbtn setImage:[UIImage imageNamed:@"g.png"] forState:UIControlStateSelected];
    [self.view addSubview:groupbtn];
    
    
    
    [searchbtn addTarget:self
                  action:@selector(asearch)
        forControlEvents:UIControlEventTouchUpInside];
    [searchbtn setTitle:@"" forState:UIControlStateNormal];
    searchbtn.frame = CGRectMake(192,518,64,50);
    [searchbtn setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateNormal];
    [searchbtn setImage:[UIImage imageNamed:@"s.png"] forState:UIControlStateSelected];
    [self.view addSubview:searchbtn];
    
    [settingbtn addTarget:self
                   action:@selector(asetting)
         forControlEvents:UIControlEventTouchUpInside];
    [settingbtn setTitle:@"" forState:UIControlStateNormal];
    settingbtn.frame = CGRectMake(256,518,64,50);
    [settingbtn setImage:[UIImage imageNamed:@"setting.png"] forState:UIControlStateNormal];
    [settingbtn setImage:[UIImage imageNamed:@"setting.png"] forState:UIControlStateSelected];
    [self.view addSubview:settingbtn];
    
}
-(void)ahome{
    
    HomeViewVC *verify = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeView"];
    [self.navigationController pushViewController:verify animated:NO];
    
}
-(void)acontact{
    
      contact *verify = [self.storyboard instantiateViewControllerWithIdentifier:@"contact"];
      [self.navigationController pushViewController:verify animated:NO];
}
-(void)agroup{
    GroupVC *verify = [self.storyboard instantiateViewControllerWithIdentifier:@"Group"];
    [self.navigationController pushViewController:verify animated:NO];
}
-(void)asearch{
    SearchVC *verify = [self.storyboard instantiateViewControllerWithIdentifier:@"Search"];
    [self.navigationController pushViewController:verify animated:NO];
}
-(void)asetting{
    
   // settingsVC *verify = [self.storyboard instantiateViewControllerWithIdentifier:@"settings"];
   // [self.navigationController pushViewController:verify animated:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    settingsVCCell *cell = (settingsVCCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = (settingsVCCell*)[[[NSBundle mainBundle]loadNibNamed:@"settingsVCCell" owner:self options:nil]objectAtIndex:0];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
   
    cell.buttonview.hidden=YES;
    
   
    if (indexPath.row == 4) {
        
        cell.buttonview.hidden=NO;
    }
    
    
    cell.lblsettings.text=[arrsettings objectAtIndex:indexPath.row];
    
    
    return cell;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrsettings.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        
        aboutusVC *chatWV=[self.storyboard instantiateViewControllerWithIdentifier:@"aboutus"];
        [self.navigationController pushViewController:chatWV animated:YES];
        
    }
    if (indexPath.row == 1) {
        
        termsconditionsVC *chatWV=[self.storyboard instantiateViewControllerWithIdentifier:@"termsconditions"];
        [self.navigationController pushViewController:chatWV animated:YES];
    }
    if (indexPath.row == 2) {
        
        privateVC *chatWV=[self.storyboard instantiateViewControllerWithIdentifier:@"private"];
        [self.navigationController pushViewController:chatWV animated:YES];
        
    }
    
    if (indexPath.row == 3) {
        
        NSArray *shareButtonTitleArray = [[NSArray alloc] init];
        NSArray *shareButtonImageNameArray = [[NSArray alloc] init];
        NSString *title ;
        NSString *cancel;
        
        if (self.tapIndex == 0) {
            
            shareButtonTitleArray = @[@"Whats app",@"SMS",@"E-Mail",@"Facebook",@"Twitter"];
            title =  @"SHARE COMPANY DETAIL";
            cancel = @"CANCEL";
            
            shareButtonImageNameArray = @[@"whatsapp",@"sns_icon_19@2x",@"sns_icon_18@2x",@"sns_icon_10@2x",@"sns_icon_11@2x"];
            self.tapIndex++;
        }
        
        if (!lxActivity) {
            lxActivity = [[LXActivity alloc] initWithTitle:title delegate:self cancelButtonTitle:cancel ShareButtonTitles:shareButtonTitleArray withShareButtonImagesName:shareButtonImageNameArray];
        }
        [lxActivity show];
        
    }
    
   

}



@end
