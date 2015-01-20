//
//  contactinfoVC.m
//  BCA
//
//  Created by Zafar Loynmoon on 15/01/15.
//  Copyright (c) 2015 Hightech. All rights reserved.
//

#import "contactinfoVC.h"
#import "contactinfoCellVC.h"

@interface contactinfoVC (){
    NSArray *arrstatic;
    NSArray *arrdyanamic;
}

@end

@implementation contactinfoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //_tlb.layer.cornerRadius=5.0;
    _tlb.layer.borderColor=[UIColor  colorWithRed:217.0/255.0 green:217.0/255.0 blue:217.0/255.0 alpha:1.0].CGColor;
    _tlb.layer.borderWidth=1.0;
    
    arrstatic =@[@"Mobile",@"Landline",@"Fax",@"Email",@"Website",@"Address"];
    arrdyanamic =@[@":00965 98588587",@":00965 22225555",@":00965 22225555",@":micheal_barbosa@hightech.com",@":www.hightech.com",@":Grand Road,AI salem Street,Block 5 Mihir Tower 16th Floor Kuwait City"];
    
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
   contactinfoCellVC *cell = (contactinfoCellVC*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = (contactinfoCellVC*)[[[NSBundle mainBundle]loadNibNamed:@"contactinfoCellVC" owner:self options:nil]objectAtIndex:0];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    cell.btncall.hidden=YES;
    cell.btnmassage.hidden=YES;
    
    if (indexPath.row == 0 ) {
        
        cell.btncall.hidden=NO;
        cell.btnmassage.hidden=NO;
    }
    if (indexPath.row == 1 ) {
        
        UILabel  *lblExt = [[UILabel alloc] initWithFrame:CGRectMake(235,14,30,25)];
        lblExt.backgroundColor = [UIColor clearColor];
        lblExt.textColor=[UIColor redColor];
        lblExt.text = @"Ext";
        [lblExt setFont:[UIFont systemFontOfSize:16]];
        [cell addSubview:lblExt];
        
        UILabel  *lblExtValue = [[UILabel alloc] initWithFrame:CGRectMake(265,14,30,25)];
        lblExtValue.backgroundColor = [UIColor clearColor];
        lblExtValue.textColor=[UIColor grayColor];
        lblExtValue.text = @": 197";
        [lblExtValue setFont:[UIFont systemFontOfSize:12]];
        [cell addSubview:lblExtValue];
    }
    
   
//    appDelegate=(AppDelegate *)[[UIApplication sharedApplication]delegate];
    
      cell.lblcategory.text=[arrstatic objectAtIndex:indexPath.row];
      cell.lblcategorydetails.text=[arrdyanamic objectAtIndex:indexPath.row];

    return cell;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrstatic.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 48;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
       
}




- (IBAction)btnback:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
