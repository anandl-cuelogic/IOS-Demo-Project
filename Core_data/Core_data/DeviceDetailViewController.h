//
//  DeviceDetailViewController.h
//  Core_data
//
//  Created by CUE on 6/21/17.
//  Copyright © 2017 CUE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface DeviceDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *versionTextField;
@property (weak, nonatomic) IBOutlet UITextField *companyTextField;

@property (strong) NSManagedObject *device;
- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;
@end
