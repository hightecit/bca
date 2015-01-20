//
//  groupcontactVC.m
//  BCA
//
//  Created by Zafar Loynmoon on 17/01/15.
//  Copyright (c) 2015 Hightech. All rights reserved.
//

#import "groupcontactVC.h"
#import "groupcontactVCCell.h"
@interface groupcontactVC ()

@end

@implementation groupcontactVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    groupcontactVCCell *cell = (groupcontactVCCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = (groupcontactVCCell*)[[[NSBundle mainBundle]loadNibNamed:@"groupcontactVCCell" owner:self options:nil]objectAtIndex:0];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    appDelegate=(AppDelegate *)[[UIApplication sharedApplication]delegate];
    cell.namelbl.text=[appDelegate.arrTitle1 objectAtIndex:indexPath.row];
    cell.comlbl.text=[appDelegate.arrDetail objectAtIndex:indexPath.row];
    cell.imgemploye.image=[UIImage imageNamed:[appDelegate.arrImageDisplay objectAtIndex:indexPath.row]];
    return cell;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 50;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
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

- (IBAction)creategroup:(id)sender {
}
@end
