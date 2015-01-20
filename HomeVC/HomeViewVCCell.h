//
//  HomeViewVCCell.h
//  BCA
//
//  Created by Zafar Loynmoon on 13/01/15.
//  Copyright (c) 2015 Hightech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewVCCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblname;
@property (weak, nonatomic) IBOutlet UILabel *lblcompanyname;
@property (weak, nonatomic) IBOutlet UILabel *lbldesignation;
@property (weak, nonatomic) IBOutlet UIImageView *employeeImage;

@end
