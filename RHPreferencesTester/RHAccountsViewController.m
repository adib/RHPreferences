//
//  RHAccountsViewController.m
//  RHPreferencesTester
//
//  Created by Richard Heard on 17/04/12.
//  Copyright (c) 2012 Richard Heard. All rights reserved.
//

#import "RHAccountsViewController.h"

@interface RHAccountsViewController ()

@end

@implementation RHAccountsViewController
@synthesize usernameTextField;

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:@"RHAccountsViewController" bundle:nibBundleOrNil];
    if (self){
        // Initialization code here.
    }
    return self;
}


#pragma mark - RHPreferencesWindowControllerProtocol

-(NSString*)identifier{
    return NSStringFromClass(self.class);
}
-(NSImage*)toolbarItemImage{
    return [NSImage imageNamed:@"AccountsPreferences.png"];
}
-(NSString*)toolbarItemLabel{
    return NSLocalizedString(@"Accounts", @"AccountsToolbarItemLabel");
}

-(NSView*)initialKeyView{
    return self.usernameTextField;
}

@end