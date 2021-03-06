//
//  contact.m
//  BCA
//
//  Created by Zafar Loynmoon on 16/01/15.
//  Copyright (c) 2015 Hightech. All rights reserved.
//

#import "contact.h"
#import "HomeViewVCCell.h"
@interface contact ()

@end

@implementation contact

- (void)viewDidLoad {
    [super viewDidLoad];
   // headerarr = [NSArray arrayWithObjects:@"A", @"B", @"C", @"D", @"E", nil];
      appDelegate=(AppDelegate *)[[UIApplication sharedApplication]delegate];
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
    
  //  contact *verify = [self.storyboard instantiateViewControllerWithIdentifier:@"contact"];
  //  [self.navigationController pushViewController:verify animated:NO];
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
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
   return appDelegate.arrTitle.count;
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



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //return 2;
    NSString *sectionTitle = [appDelegate.arrTitle objectAtIndex:section];
    NSArray *sectionAnimals = [appDelegate.maindic objectForKey:sectionTitle];
    return [sectionAnimals count];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 75;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
   // contactinfoVC *chatWV=[self.storyboard instantiateViewControllerWithIdentifier:@"contactinfo"];
   // [self.navigationController pushViewController:chatWV animated:YES];
    
    
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
   // tempLabel.text = @"A";
    tempLabel.text = [appDelegate.arrTitle objectAtIndex:section];
    [tempView addSubview:tempLabel];
    
    return tempView;
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
