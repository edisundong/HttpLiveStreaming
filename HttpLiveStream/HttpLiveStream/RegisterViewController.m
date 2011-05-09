//
//  RegisterViewController.m
//  HttpLiveStream
//
//  Created by jinwei zheng on 5/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RegisterViewController.h"


@implementation RegisterViewController

@synthesize username;
@synthesize password;
@synthesize confirmPassword;
@synthesize eamil;
@synthesize userRegister;
@synthesize cancelRegister;

@synthesize webData;
@synthesize soapResults;
@synthesize xmlParser;

- (IBAction)textFieldDoneEditing:(id)sender{
    [sender resignFirstResponder];
}

- (IBAction)backgroundTap:(id)sender{//hide keyboard
    [username resignFirstResponder];
    [password resignFirstResponder];
    [confirmPassword resignFirstResponder];
    [email resignFirstResponder];
}

- (IBAction)userRegisterPressed{
    NSString *msg = nil;

    if (username.text.length == 0) 
         msg = [[NSString alloc]initWithFormat:@"Please input username!"];
    else if (password.text.length ==0)
        msg = [[NSString alloc]initWithFormat:@"Please input password!"];
    else if (confirmPassword.text.length == 0 && confirmPassword.text != password.text )
        msg = [[NSString alloc]initWithFormat:@"Please input correct confirmPassword!"];
     else if (email.text.length ==0)
        msg = [[NSString alloc]initWithFormat:@"Please input E-mail address!"];
    else
    {
        
    }
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Prompt" message:msg delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles: nil];
    [alert show];
    [alert release];
    [msg release];
    
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [username release];
    [password release];
    [confirmPassword release];
    [email release];
    [userRegister release];
    [cancelRegister release];
    
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    self.username = nil;
    self.password = nil;
    self.confirmPassword = nil;
    self.eamil = nil;
    self.userRegister = nil;
    self.cancelRegister = nil;
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
