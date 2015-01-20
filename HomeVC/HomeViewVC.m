//
//  HomeViewVC.m
//  BCA
//
//  Created by Zafar Loynmoon on 13/01/15.
//  Copyright (c) 2015 Hightech. All rights reserved.
//

#import "HomeViewVC.h"
#import "HomeViewVCCell.h"
#import "contactinfoVC.h"
@interface HomeViewVC ()

@end

@implementation HomeViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    appDelegate=(AppDelegate *)[[UIApplication sharedApplication]delegate];
    
    
    Homebtn = [UIButton buttonWithType:UIButtonTypeCustom];
    contactbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    groupbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    searchbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    settingbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
   
    tedst
    
    
    
    
    
    
    
    
   
    
    
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    [Homebtn addTarget:self
               action:@selector(ahome)
     forControlEvents:UIControlEventTouchUpInside];
    [Homebtn setTitle:@"" forState:UIControlStateNormal];
    Homebtn.frame = CGRectMake(0,518,64,50);
    Homebtn.adjustsImageWhenHighlighted = NO;
    [Homebtn setImageEdgeInsets:UIEdgeInsetsMake(5.0f, 5.0f, 5.0f, 5.0f)];
    [Homebtn setImage:[UIImage imageNamed:@"home_BG_active.png"] forState:UIControlStateNormal];
    [Homebtn setImage:[UIImage imageNamed:@"home_BG.png"] forState:UIControlStateSelected];
    [self.view addSubview:Homebtn];
    
    
    
    [contactbtn addTarget:self
                action:@selector(acontact)
      forControlEvents:UIControlEventTouchUpInside];
    [contactbtn setTitle:@"" forState:UIControlStateNormal];
    contactbtn.frame = CGRectMake(64,518,64,50);
    contactbtn.adjustsImageWhenHighlighted = NO;

    [contactbtn setImage:[UIImage imageNamed:@"contacts_passive.png"] forState:UIControlStateNormal];
    [contactbtn setImage:[UIImage imageNamed:@"contacts_active_bg.png"] forState:UIControlStateSelected];
    [self.view addSubview:contactbtn];
    
    
    
    [groupbtn addTarget:self
                action:@selector(agroup)
      forControlEvents:UIControlEventTouchUpInside];
    [groupbtn setTitle:@"" forState:UIControlStateNormal];
    groupbtn.frame = CGRectMake(128,518,64,50);
    groupbtn.adjustsImageWhenHighlighted = NO;

    [groupbtn setImage:[UIImage imageNamed:@"group_bg_passive.png"] forState:UIControlStateNormal];
    [groupbtn setImage:[UIImage imageNamed:@"group_bg_active.png"] forState:UIControlStateSelected];
    [self.view addSubview:groupbtn];
    
    
    
    [searchbtn addTarget:self
                action:@selector(asearch)
      forControlEvents:UIControlEventTouchUpInside];
    [searchbtn setTitle:@"" forState:UIControlStateNormal];
    searchbtn.frame = CGRectMake(192,518,64,50);
    searchbtn.adjustsImageWhenHighlighted = NO;

    [searchbtn setImage:[UIImage imageNamed:@"social_passive_bg.png"] forState:UIControlStateNormal];
    [searchbtn setImage:[UIImage imageNamed:@"social_active_bg.png"] forState:UIControlStateSelected];
    [self.view addSubview:searchbtn];
    
    [settingbtn addTarget:self
                  action:@selector(asetting)
        forControlEvents:UIControlEventTouchUpInside];
    [settingbtn setTitle:@"" forState:UIControlStateNormal];
    settingbtn.frame = CGRectMake(256,518,64,50);
    settingbtn.adjustsImageWhenHighlighted = NO;

    [settingbtn setImage:[UIImage imageNamed:@"setting_passive.png"] forState:UIControlStateNormal];
    [settingbtn setImage:[UIImage imageNamed:@"setting_active_bg.png"] forState:UIControlStateSelected];
    [self.view addSubview:settingbtn];
}


-(void)ahome{
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
    
    settingsVC *verify = [self.storyboard instantiateViewControllerWithIdentifier:@"settings"];
    [self.navigationController pushViewController:verify animated:NO];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return appDelegate.arrTitle.count;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [appDelegate.arrTitle objectAtIndex:section];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  //  return 2;
    
    NSString *sectionTitle = [appDelegate.arrTitle objectAtIndex:section];
    NSArray *sectionAnimals = [appDelegate.maindic objectForKey:sectionTitle];
    return [sectionAnimals count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    HomeViewVCCell *cell = (HomeViewVCCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = (HomeViewVCCell*)[[[NSBundle mainBundle]loadNibNamed:@"HomeViewVCCell" owner:self options:nil]objectAtIndex:0];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
     appDelegate=(AppDelegate *)[[UIApplication sharedApplication]delegate];
    NSString *sectionTitle = [appDelegate.arrTitle objectAtIndex:indexPath.section];
    NSArray *sectionAnimals = [appDelegate.maindic objectForKey:sectionTitle];
    cell.lblname.text=[sectionAnimals objectAtIndex:indexPath.row];
    cell.lblcompanyname.text=[appDelegate.arrDetail objectAtIndex:indexPath.row];
    cell.employeeImage.image=[UIImage imageNamed:[appDelegate.arrImageDisplay objectAtIndex:indexPath.row]];
    return cell;
}




- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 75;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    contactinfoVC *chatWV=[self.storyboard instantiateViewControllerWithIdentifier:@"contactinfo"];
    [self.navigationController pushViewController:chatWV animated:YES];

    
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 30.0;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
   
    appDelegate=(AppDelegate *)[[UIApplication sharedApplication]delegate];
    UIView *tempView=[[UIView alloc]initWithFrame:CGRectMake(0,0,300,30)];
    UILabel *tempLabel=[[UILabel alloc]init];
    tempLabel.backgroundColor=[UIColor clearColor];
    tempLabel.textColor = [UIColor darkGrayColor]; 
    [tempLabel setFrame:CGRectMake(7,0,300,30)];
    tempLabel.font =  [UIFont fontWithName:@"Verdana" size:15];
  //  tempLabel.text = [[appDelegate.arrTitle objectAtIndex:section] objectAtIndex:0];
    tempLabel.text = [appDelegate.arrTitle objectAtIndex:section];
  //  tempLabel.text = @"A";
   
    [tempView addSubview:tempLabel];
    
    return tempView;
}








@end
