//
//  BrowserView.m
//  SplitViewControllerDemo
//
//  Created by Will Chilcutt on 3/21/12.
//  Copyright (c) 2012 ETSU. All rights reserved.
//

#import "BrowserView.h"

@implementation BrowserView
@synthesize browserToolbar = _browserToolbar;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
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
    [self setBrowserToolbar:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

#pragma mark - UISplitViewControllerDelegate Methods

- (void)splitViewController: (UISplitViewController*)svc 
     willHideViewController:(UIViewController *)aViewController 
          withBarButtonItem:(UIBarButtonItem*)barButtonItem 
       forPopoverController: (UIPopoverController*)pc
{
    barButtonItem.title = @"Bookmarks";
    NSMutableArray *toolBarItems = [[self.browserToolbar items] mutableCopy];
    [toolBarItems insertObject:barButtonItem atIndex:0];
    [self.browserToolbar setItems:toolBarItems animated:YES];
    toolBarItems = nil;
}
- (void)splitViewController: (UISplitViewController*)svc 
     willShowViewController:(UIViewController *)aViewController 
  invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    NSMutableArray *toolBarItems = [[self.browserToolbar items]mutableCopy];
    
    [toolBarItems removeObject:barButtonItem];
    [self.browserToolbar setItems:toolBarItems animated:YES];
    toolBarItems = nil;
}


@end
