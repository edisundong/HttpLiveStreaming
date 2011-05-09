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
}
@property (nonatomic, retain)IBOutlet UITextField *username;
@property (nonatomic, retain)IBOutlet UITextField *password;
@property (nonatomic, retain)IBOutlet UITextField *confirmPassword;
@property (nonatomic, retain)IBOutlet UITextField *eamil;
@property (nonatomic, retain)IBOutlet UIButton *UserRegister;
@property (nonatomic, retain)IBOutlet UIButton *cancelRegister;

- (IBAction)textFieldDoneEditing:(id)sender;
- (IBAction)backgroundTap:(id)sender;
- (IBAction)userRegisterPressed;

@end
