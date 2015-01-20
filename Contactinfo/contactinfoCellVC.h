//
//  contactinfoCellVC.h
//  BCA
//
//  Created by Zafar Loynmoon on 15/01/15.
//  Copyright (c) 2015 Hightech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface contactinfoCellVC : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblcategory;
@property (weak, nonatomic) IBOutlet UILabel *lblcategorydetails;
@property (weak, nonatomic) IBOutlet UIButton *btnmassage;
@property (weak, nonatomic) IBOutlet UIButton *btncall;

@end
