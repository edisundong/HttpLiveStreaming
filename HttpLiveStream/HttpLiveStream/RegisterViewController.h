//
//  RegisterViewController.h
//  HttpLiveStream
//
//  Created by jinwei zheng on 5/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RegisterViewController : UIViewController {
    
    UITextField *username;
    UITextField *password;
    UITextField *confirmPassword;
    UITextField *email;
    UIButton *userRegister;
    UIButton *cancelRegister;
    
    NSMutableData *webData;
    NSMutableString *soapResults;
    NSXMLParser *xmlParser;
    BOOL recordResults;
}
@property (nonatomic, retain)IBOutlet UITextField *username;
@property (nonatomic, retain)IBOutlet UITextField *password;
@property (nonatomic, retain)IBOutlet UITextField *confirmPassword;
@property (nonatomic, retain)IBOutlet UITextField *eamil;
@property (nonatomic, retain)IBOutlet UIButton *userRegister;
@property (nonatomic, retain)IBOutlet UIButton *cancelRegister;

@property (nonatomic, retain)NSMutableData *webData;
@property (nonatomic, retain)NSMutableString *soapResults;
@property (nonatomic, retain)NSXMLParser *xmlParser;


- (IBAction)textFieldDoneEditing:(id)sender;
- (IBAction)backgroundTap:(id)sender;
- (IBAction)userRegisterPressed;

@end
