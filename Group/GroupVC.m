//
//  GroupVC.m
//  BCA
//
//  Created by Zafar Loynmoon on 16/01/15.
//  Copyright (c) 2015 Hightech. All rights reserved.
//

#import "GroupVC.h"
#import "GroupVCCell.h"
#import "groupcontactVC.h"
@interface GroupVC (){
    
    NSArray *arstatic;
}

@end

@implementation GroupVC

- (void)viewDidLoad {
    [super viewDidLoad];
    arstatic =@[@"Staff",@"Friends",@"Relatives",@"Business",@"College",@"Other"];
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    GroupVCCell *cell = (GroupVCCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = (GroupVCCell*)[[[NSBundle mainBundle]loadNibNamed:@"GroupVCCell" owner:self options:nil]objectAtIndex:0];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    
    //    appDelegate=(AppDelegate *)[[UIApplication sharedApplication]delegate];
    
    cell.lblgroupname.text=[arstatic objectAtIndex:indexPath.row];
   
    
    return cell;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arstatic.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 50;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    groupcontactVC *chatWV=[self.storyboard instantiateViewControllerWithIdentifier:@"groupcontact"];
    [self.navigationController pushViewController:chatWV animated:YES];
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
